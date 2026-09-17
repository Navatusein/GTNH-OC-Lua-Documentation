# CLAUDE.md

Guidance for Claude Code when working in this repository.

## What this repo is

LuaLS (sumneko `Lua` extension) type definitions for OpenComputers as shipped in the
**GregTech: New Horizons** modpack. Users point `Lua.workspace.library` at the `lua/` folder
and get autocomplete + docs for OC libraries and component proxies. Nothing here is executed —
every file is a `---@meta` stub.

The original content was generated with ChatGPT and was never checked against the mods. It has
since been audited: every component that could be reached in-game is now verified against a
dump of the real proxy, and the wrong entries that audit found are fixed. The remaining work is
the tail of components nobody has dumped yet — see the work plan below.

## Layout

```
lua/libs/                        20 files — OC standard libraries (component, event, fs, term, ...)
lua/components/                 151 files — one per component type
lua/components/abstracts/        18 files — shared bases, one per mod driver (see below)
lua/type-definitions/oc-types/   12 files — userdata returned by callbacks (ItemStack, StackSlot, Trade, ...)
lua/type-definitions/ae-types/   10 files — AE2 userdata (AECpu, AECraftable, AECraftingJob, ME*Stack, ...)
lua/type-definitions/ic2-types/   2 files — IC2 userdata (CropNBT, ReactorComponent)
lua/type-definitions/ar-glasses/ 27 files — OpenGlasses widgets and interfaces
tools/dumper.lua                 the in-game dumper that produces dumps/
tools/generate-readme.py         regenerates the component tables in README.md
tools/dump-to-stub.py            renders a dump into an annotated component stub
dumps/computer|robot|tablet/    177 files — in-game proxy dumps, one per component per host
docs/                            README screenshots only
```

An **abstract** is the useful unit of work here, not the component file. Each one corresponds to
a single mod driver, and the components that a driver attaches to are usually thin classes that
only name a type and point at abstracts. The current set:

| Abstract | What it is |
| --- | --- |
| `BaseComponent` | `address` and `slot`, which every component has |
| `BaseEnergyHandler` | the CoFH RF driver — turns up on AE2, EnderIO, Forestry, Draconic blocks |
| `BaseAspectContainer` | Thaumcraft `IAspectContainer` — two methods |
| `BaseEssentiaTransport` | `IEssentiaTransport`, on top of the aspect container |
| `BaseGregTechEnergy` | the OC GregTech energy container driver |
| `BaseGregTechMachine` | what the Computronics GregTech drivers add on top of it |
| `BaseBeeHousing` | the Forestry bee housing driver, behind ten derived names |
| `BaseEnderStorage` | EnderStorage frequency and owner |
| `CommonNetworkAPI` | the AE2 `NetworkControl` API |
| `EssentiaNetworkAPI` | the Thaumic Energistics part of it |
| `MEInterfaceAPI` | interface configuration and pattern editing |
| `BaseExportBus` / `BaseImportBus` / `BaseStorageBus` | what every ME bus of that kind shares |
| `BaseReactor` | the IC2 reactor API |
| `BaseTurretBase` | the Open Modular Turrets `SimpleComponent` API |
| `BaseModturTurretBase` | the essentia and energy component on the same turret block |
| `BaseSpeech` | Computronics text to speech |

`dumps/<host>/<type>.txt` holds the output of dumping a real component proxy in-game (the table
of method name → doc string, plus `type`/`address`/`slot`). These are the highest-authority
source we have. The per-host split matters: the same component type exposes different methods
depending on where it sits, so always say which host a claim comes from, and never merge hosts
silently. A single host can also see two variants of one type (`redstone.txt` /
`redstone-2.txt`, `info_panel.txt` / `info_panel-2.txt`) — that is the dumper keeping a
genuinely different method set.

`tools/dumper.lua` produces them: run it in-game on a computer wired to the blocks of interest
and it writes one file per component type into `/home/dumps`, ready to be copied into `dumps/`.
`--filter=` narrows it to certain types, `-l` lists what is reachable without writing anything,
and components of one type whose method sets differ are kept as `<type>-2.txt` and so on.
The file it writes is sorted by key and escapes quotes, so dumps stay diffable between runs
(the hand-made dumps from 2026-09-17 are unsorted and unescaped — that is expected).

## Source of truth

Mod sources are cloned under `D:\Projects\Forks\GTNH\`. Always verify against these before
writing or changing a signature.

| Path (under `D:\Projects\Forks\GTNH\`) | Covers |
| --- | --- |
| `OpenComputers` | OC core + all its mod integrations (AE2, IC2, Thaumcraft, Forestry, CoFH, GregTech energy/BEC, Railcraft, vanilla, ...) |
| `Computronics` | `gt_machine`, `chat_box` / `chat`, `sound`, `camera`, `beep`, `noise`, `radar`, `speech`, tape drive, and ~45 more drivers |
| `OpenSecurity` | the `os_*` components — 10 documented, `os_switchinghub` and `os_kvm` left |
| `AE2FluidCraft-Rework` | `level_maintainer`, `oc_pattern_editor`, `fluid_interface`, the fluid buses |
| `OCGlasses` | `glasses` + the `ar-glasses` widget/interface types |
| `Display-Panels` | `info_panel`, `advanced_info_panel`, `thermal_monitor`, `howler_alarm`, energy counters — **this is the current mod**, use it |
| `Nuclear-Control` | superseded by `Display-Panels` (same driver set). Keep only as a fallback reference |
| `OpenModularTurrets` | `tierOne..FiveTurretBase`, and the `modtur_turretbase*` component on the same blocks |
| `SGCraft` | `stargate` |
| `GT5-Unofficial` | almost nothing for us — only `GT-Data Server` (`imprintOrb`, `listData`). GregTech machine access lives in Computronics and OpenComputers, **not** here |
| `Draconic-Evolution` | `flux_gate`, `fluid_gate`, `draconic_reactor`, `draconic_rf_storage`, `particle_generator` — all through `ManagedPeripheral`, see the note below |
| `Applied-Energistics-2-Unofficial` | **no OC components of its own** (only a P2P tunnel and a `SidedEnvironment` part layer). Useful only to check which interfaces its tiles implement — e.g. `tile/powersink/RedstoneFlux.java` and `parts/layers/LayerIEnergyHandler.java` make every powered AE2 tile an RF `IEnergyReceiver` |

### How to read a component out of a mod source

1. Component name: `withComponent("name")`, or `new ManagedTileEntityEnvironment<T>(tile, "name")`
   / `extends ManagedTileEntityEnvironment[T](tile, "name")`, or `super(tile, "name")`, or
   `String getComponentName() { return "name"; }` (Computronics/OpenSecurity `SimpleComponent`).
   The name is often an indirection — a `NAME` constant, a `NameConst.*` field, or a string
   passed down into an environment constructor. Resolve it, don't assume the class name.
2. Methods: every `@Callback`-annotated method in that class **and in every trait/interface it
   mixes in, and in every subclass of it** (e.g. `redstone` lives in `RedstoneSignaller` but its
   methods come from `RedstoneVanilla` / `RedstoneBundled` / `RedstoneWireless`).
3. The `doc = "function(...):type -- description"` string on `@Callback` is the authoritative
   signature and description — translate it, don't invent one. Mods are inconsistent about the
   shape of that string: OpenSecurity writes `type: name` with the two reversed and prefixes
   optional arguments with `optional:`, GregTech returns `boolean or (nil, string)`, Thaumic
   Energistics spells alternatives `aspect:string OR detail:table`, and some callbacks carry no
   signature at all. `tools/dump-to-stub.py` knows these shapes; still read what it produced.
4. **Methods declared in a class extending `AbstractValue` are NOT component methods.** They
   belong to a userdata object returned by some callback and must be documented as a separate
   `---@class` under `lua/type-definitions/`, never merged into the component.
5. **One block can be several drivers at once.** `server/driver/CompoundBlockDriver.scala`
   merges every driver that matches a block into a *single* component whose methods are the
   union of all of them. Its name is picked in this order: the highest-`priority`
   `NamedBlock.preferredName` among them → `IInventory.getInventoryName` minus `container.` →
   the block's unlocalized name minus `tile.` → the tile entity's registry name → `"component"`;
   then non-word characters become `_` and everything is lowercased (`cleanName`).
   Consequences to keep in mind:
   - A component name can exist in-game while appearing in **no** source file, and this is
     the normal case, not the exception — a source-derived list of names is not a reliable
     index of what a player sees. Forestry bee housings alone reach us as `alveary`,
     `for_alveary_0/3/4/6`, `tile_for_apiculture_0_name`, `tile_for_apiculture_2_name`,
     `magicbees_magicapiary`, and — via the `IInventory.getInventoryName` step of the chain —
     as `caninv`, `items` and `swarminv`. Never "fix" such a name away without testing in-game.
   - One block can carry **two** components at once when a `SimpleComponent` name and a
     driver-derived name both apply: an Open Modular Turrets base answers both to
     `tierOneTurretBase` (16 turret methods) and to `modtur_turretbaseone` (14 essentia and
     energy methods).
   - A named component legitimately carries methods from unrelated drivers. AE2 power-sink
     tiles and cable-bus parts implement RF `IEnergyReceiver`
     (`tile/powersink/RedstoneFlux.java`, `parts/layers/LayerIEnergyHandler.java`), which is
     where the `getEnergyStored` / `getMaxEnergyStored` / `isEnergyProvider` /
     `isEnergyReceiver` on the ME chest and the cable bus come from. It does **not** attach to
     every AE2 block — the `fluid_interface` dump has none of them — so confirm per block.
   - So "method X is not in this component's driver" is **not** proof it is unavailable; check
     what else `worksWith` the same block first.
6. **Driver matching is subclass-inclusive.** `prefab.DriverSidedTileEntity.worksWith` tests
   `getTileEntityClass()` by assignability, so a tile that extends another mod's tile inherits
   every driver of the parent class. Example: AE2FC's `TileFluidInterface extends TileInterface`,
   so OC's `DriverBlockInterface` (`me_interface`, priority 5) matches it in addition to the two
   fluid-interface drivers (priority 6) — the block ends up named `fluid_interface` but carrying
   the entire ME interface + `NetworkControl` API. Always check the tile's superclass chain.
7. **A `ManagedPeripheral` has no doc strings at all.** Draconic Evolution implements
   `li.cil.oc.api.network.ManagedPeripheral` instead of annotating methods: the component
   name comes from `IDEPeripheral.getName()`, the method list from `getMethodNames()`, and
   the arguments only exist as casts inside `callMethod()`. A dump of such a block lists the
   names with no signature, so parameters and return values have to be read out of
   `callMethod` by hand. Watch for the peripheral living on a different block than the one
   it controls — `draconic_reactor` answers on the Energy Injector and the Stabilizer, and
   both forward to the reactor core.
8. **An in-game dump beats source reading.** When the user provides output of
   `component.methods` / a proxy dump for a real block, that is the authoritative method set —
   it already accounts for compounding, subclassing and which mods are actually loaded. Use the
   source only to recover parameter names and descriptions for the methods that dump lists.

## Conventions

- One component per file, file name in `kebab-case`, class name exactly equal to the component
  type string (`me_exportbus`, not `meExportBus`); the `local` holder may be camelCase.
- File skeleton:
  ```lua
  ---@meta _

  ---@class me_exportbus: BaseComponent
  ---@field type "me_exportbus"
  local meExportBus = {}

  ---Short description, one sentence per line.
  ---@param side integer # What it is.
  ---@param slot? integer # Optional parameter, `?` on the name.
  ---@return boolean # What comes back.
  function meExportBus.exportIntoSlot(side, slot) end
  ```
- Overloads are written as repeated `function` declarations with different `@param` blocks
  (LuaLS picks them all up). Duplicated *identical* declarations are bugs, not overloads.
- Shared method sets go into `lua/components/abstracts/` and are inherited via
  `---@class x: BaseComponent, OtherBase`. **An abstract corresponds to exactly one mod
  driver** — never to a group that merely looks similar. Two drivers that always appear
  together are still two abstracts: `BaseAspectContainer` and `BaseEssentiaTransport` were one
  class until a dump of `blockmetaldevice_0` showed a block carrying only the first.
- A component whose methods all come from abstracts is a **thin class** — a type, a parent
  list and a one-line comment, nothing else:
  ```lua
  ---@meta _

  ---An ender chest from EnderStorage.
  ---@class ender_chest: BaseEnderStorage
  ---@field type "ender_chest"

  -- Empty on purpose, every method comes from the parents.
  ```
  Most components reached under a derived name look like this.
- **A component type gets exactly one class, holding the union of every method it can expose.**
  When a method only exists in some contexts, say so at the end of its description as a bold
  note, and keep it in the same file:
  ```lua
  ---Swaps the equipped tool with the item in the selected slot.
  ---
  ---**Robot only** — not available through an adapter.
  ---@return boolean
  function inventoryController.equip() end
  ```
  Autocomplete resolves by the component type string, which is identical in every context, so
  splitting into per-context classes would only break resolution. The trade-off is accepted:
  autocomplete may offer a method the block at hand does not have — the note is what warns the
  reader. Use the wording of the host, not of the mod: *Robot only*, *Adapter only*,
  *Wireless Redstone card only*, *Screen block only*.
- After adding a component, regenerate both indexes from the files on disk:
  1. the `ComponentLibrary` field list in `lua/libs/component.lua` — without an entry there,
     `component.<name>` does not autocomplete;
  2. the component tables in `README.md`, with `tools/generate-readme.py`. That script holds
     the mod grouping and the one-line "what it is" for every component; add the new type to
     its `INFO` map first, or it refuses to run rather than quietly dropping it.

## Ground rules

- Never add a method that is in neither a dump nor the mod source. Where the two disagree the
  dump wins — it is what the player's machine actually answers. A method that exists in
  upstream MightyPirates/OpenComputers but not in the GTNH fork does not belong here.
- Do not write a file for a component nobody has dumped unless the name is known to be
  reliable (see the buckets in section C). Guessing a name from the source is how you create a
  class that no `component.<name>` will ever resolve to.
- Keep documentation in English (the repo is English-facing), even when the conversation is not.
- `git` branches: **commit straight to `main`** — that is the working branch here, no feature
  branch needed. `gtnh-2.8` is a snapshot of the pre-audit state kept in case the old wording
  is ever wanted back; it is not a version pin and nothing should be verified against it.
  Verify against the default branch of each mod fork instead.
- Commit messages follow the existing history: one short imperative line, capitalised, no
  trailing period and no `feat:`-style prefix (`Add documentation for sound component`,
  `Fix components after libraries refactor`). Add a body only when the subject line cannot
  carry the reason for the change.

## Work plan

Findings from the 2026-09-17 audit against `OpenComputers@18c66d3e2` and the GTNH mod forks
listed above.

### A. Wrong information — done (2026-09-17)

- `me-interface.lua`: drop `getFluidInterfaceConfiguration` / `setFluidInterfaceConfiguration`.
  Confirmed by dump — they are on `fluid_interface` only.
- `transposer.lua`: `count` / `getAll` / `reset` are methods of the userdata iterator returned
  by `getAllStacks` (`ItemStackArrayValue`), not of the component — move them to a type.
  Confirmed absent from the dump. Also `compareStackToDatabase` is declared twice identically.
- `debug.lua`: `getScoreboard` does not exist in the GTNH fork — confirmed absent from the dump.
  Remove it and the `oc-types/debug-scoreboard.lua` type.

### B. Missing methods on existing components — done (2026-09-17)

Every row is confirmed by an in-game dump (`dumps/<host>/*.txt`), marked ✅.

| Component | Add |
| --- | --- |
| ✅ `me_controller`, `me_interface`, `fluid_interface` | the same ten: `getItemInNetwork`, `getFluidInNetwork`, `getItemsInNetworkById`, `getCraftable`, `set/isItemEventSubscription`, `set/isFluidEventSubscription`, `set/isEssentiaEventSubscription`. **`getGasesInNetwork` is not in any dump** — it is an ExtraCells driver method; do not add it without seeing it in a dump |
| ✅ `inventory_controller` (adapter) | `getAllStacks`, `getInventoryName`, `getInventorySize`, `getSlotStackSize`, `getSlotMaxStackSize`, `compareStacks`, `compareStackToDatabase`, `areStacksEquivalent`, `setStackDisplayName`, `store` |
| ✅ `inventory_controller` (robot) | the ten above **plus** `equip`, `installUpgrade`, `getUpgradeContainerTier`, `getUpgradeContainerType`, `dropIntoSlot`, `dropIntoItemInventory`, `suckFromSlot`, `suckFromItemInventory`, `getItemInventorySize`, `isEquivalentTo`, `compareToDatabase`, `storeInternal` (24 in total) |
| ✅ `tank_controller` (robot) | `drain`, `fill`, `getFluidInInternalTank`, `getFluidInTankInSlot`, `getTankCapacityInSlot`, `getTankLevelInSlot`. The adapter side has only the four already documented |
| ✅ `upgrade_me` | `getItemInNetwork`, `getFluidInNetwork`, `getCraftable`, `set/isItemEventSubscription`, `set/isFluidEventSubscription` (no essentia, no `getItemsInNetworkById`) |
| ✅ `me_exportbus` | `getExportSlotSize`, `getExportOreFilter`, `setExportOreFilter` |
| ✅ `gt_machine` | `getCircuitConfiguration`, `setCircuitConfiguration` |
| ✅ `transposer` | `compareStacks`, `swap`, `getFluidTransferRate` |
| ✅ `gpu` | `totalMemory` |
| ✅ `redstone` | `getComparatorInput` |
| ✅ `glasses` | `sendChatAs`, `sendMessageTo` |
| ✅ `level_maintainer` | `setEnable` |
| ✅ `robot` | `start`, `stop`, `isRunning`, `getName`, `setName` — the external view only, see B2 |

Verified as already correct: `beekeeper`, `blood_altar`, `master_ritual_stone`, `database`,
`geolyzer`, `modem`, `motion_sensor`, `printer3d`, `reactor`, `reactor_chamber`,
`reactor_redstone_port`, `waypoint`, `world_sensor`, `camera`, `chat_box`, `os_keypad`,
`stargate`, `oc_pattern_editor`, `tier*TurretBase`, `sound`, and — by dump — `info_panel`,
`robot`, `navigation`, `sign`, `tps_card`, `screen`, `tank_controller` (adapter side).

### B2. The same type is not the same set everywhere — done (2026-09-17)

Confirmed by comparing `dumps/computer/` against `dumps/robot/`. Document each of these as one
class holding the union, with a context note on the methods that are not universal (see
Conventions):

| Component | Difference |
| --- | --- |
| `inventory_controller` | adapter 11 methods vs robot 24 — the robot adds `equip`, upgrade-container and internal-slot handling |
| `tank_controller` | adapter 4 vs robot 10 |
| `screen` | the robot's built-in screen has 7 methods; a real screen block has 9 (`isTouchModeInverted` / `setTouchModeInverted` only there) |
| `redstone` | `dumps/computer/redstone.txt` has 14 methods including the wireless ones; `redstone-2.txt` has 9 with no wireless. The wireless group belongs to the Wireless Redstone card only |
| `robot` | the two views are **disjoint**. From inside, the robot's own `robot` component is the 28 methods our file already documents. Through an adapter next to a robot, the `robot` component is a completely different set of 5: `getName`, `setName`, `start`, `stop`, `isRunning` — and none of the 28. So every method in `robot.lua` needs a context note: the existing ones **Robot only**, the five new ones **Adapter only** |
| `gt_machine` | varies per machine; the dumped one has no `getBatteryCharge` / `getParameters` |
| `info_panel` | the basic Information Panel has 4 methods, the Advanced one has 10 — **and reports the same `info_panel` type**, because its tile extends the basic one (rule 6). The source name `advanced_info_panel` never reaches the player |
| `modem` | the dumped wired modem has no `getStrength` / `setStrength`, and carries `generateUUID` from OpenSecurity |
| `configurator` | the robot side adds `replaceConduitFilter` |
| `reactor` vs `reactor_chamber` | same reactor API, but only the reactor block answers as an IC2 energy source and carries `getOfferedEnergy` |
| `redstone` in a tablet | only 7 methods — the wireless group plus the wake threshold. A tablet has no sides, so `getInput`, `getOutput`, `setOutput`, the bundled group and `getComparatorInput` are all absent |
| `modem` in a tablet | wireless, so it has `getStrength` / `setStrength`, but not the OpenSecurity `generateUUID` that the wired modem carries |
| `screen` in a tablet | same 7 methods as a robot's screen, no touch mode |
| `drive` vs `filesystem` | the same item: a drive in managed mode is `filesystem`, in unmanaged mode it is `drive` |
| RF energy methods | `me_controller` and `me_exportbus` have them, `me_interface`, `fluid_interface` and `inventory_controller` do not |

`sound` documents `modes` and `channel_count` as `---@field … table`, which the dump confirms —
they really are tables, not callbacks, even though the source annotates them like methods.

Still unverifiable: `tilechest` (needs the AE2 fork).

### C. Undocumented components — 26 source names left, and 8 of them are already covered

Everything present in `dumps/` is documented and matches its dump: 159 component/host pairs,
151 component types over 18 abstracts. Only `drone` and `leash` are written without a dump —
from the mod source — because neither can be dumped in-game; verify them if that ever changes.

**Read the remaining list with care.** It counts names found in the OpenComputers source, and
by now it is established that most mod drivers never reach the player under their source name
(rule 5). Of the 26 below, these are **already documented** under an abstract and need no file
of their own: `bee_housing` (`BaseBeeHousing`), `energy_handler` (`BaseEnergyHandler`),
`aspect_container` (`BaseAspectContainer`), `gt_energyContainer` (`BaseGregTechEnergy`),
`ender_storage` (`BaseEnderStorage`), and the three `ender_energy` / `ender_fluid` /
`ender_item` variants of the same EnderStorage API. Check the abstracts before writing anything.

Dropped, do not retry without new information: `crop` (deprecated), `abstract_bus`
(StargateTech 2 not in the pack), `redstone_control` (Thermal Expansion not in the pack),
`access_point` (block not found in-game), `mob_spawner` (not worth it).

What is genuinely left is the long tail of bucket-3 drivers whose in-game name is almost
certainly derived, most of them one to four methods: `LSC`(4), `command_block`(3),
`energy_conductor`(4), `energy_info`(4), `energy_storage`(3), `energy_sink`(1),
`energy_source`(1), `deep_storage_unit`(3), `secure_tile`(3), `serial_port`(3),
`bc_controllable`(3), `extreme_autocrafter`(2), `drawbridge`(1), `fluid_handler`(1),
`fluid_tank`(1), `ic2_teleporter`(1), `lamp`(1), `mass_fab`(1). Dump the block, see what name
comes back, and add a thin class over whichever abstract already fits.

Beyond OpenComputers, OpenSecurity still has `os_switchinghub` and `os_kvm`, and Computronics
roughly 25 more drivers (`transceiver`, `telepad`, `power_monitor`, `capacitor_bank`,
`spatial_io_port`, `vacuum_chest`, `weather_obelisk`, the Railcraft track drivers, ...) — all
bucket-3 cases.

### D. Resolved / do not "fix"

- `me-fluid-interface.lua` is **structurally correct**. An in-game dump (2026-09-17) shows
  `fluid_interface` carrying the full `CommonNetworkAPI`, the interface configuration and
  pattern methods, *and* `get/setFluidInterfaceConfiguration` — 33 methods total. Reason:
  `TileFluidInterface extends TileInterface`, so OC's `me_interface` driver matches the block
  too and gets compounded in; the name comes from the higher-priority fluid driver (see rules
  5–6 above). Only the methods listed in section B are actually missing. Notably the dump shows
  **no** RF energy methods on this block, so do not assume the CoFH driver attaches everywhere.
- `gt-machine.lua` is **correct as one file**. The in-game dump shows `gt_machine` carrying both
  the Computronics GT drivers and OC's `gt_energyContainer` methods (`getStoredEU*`,
  `getEUCapacity*`, voltage/amperage, steam) under the single name `gt_machine`. Do not split
  it. Its exact method set varies by machine, though — the dumped machine has no
  `getBatteryCharge` / `getParameters`, which exist on battery buffers and parametrized
  machines, so those belong in per-machine notes rather than the common class.
- `info-panel.lua` is **correct as one file**. Both the basic and the Advanced Information Panel
  report the type `info_panel`, so the six thickness and rotation methods live in the same class
  with an "Advanced Information Panel only" note. Do not split it into `advanced_info_panel` —
  that name exists in the Display-Panels source but never reaches the player.
- `ae-multipart.lua` and `tile-chest.lua` are **correct**. `aemultipart` and `tilechest` are
  names produced by `CompoundBlockDriver` (see rule 5 above), and their four RF methods come
  from OC's CoFH `DriverEnergyReceiver`, which matches every powered AE2 tile. Inheriting them
  into `me_controller` / `me_exportbus` reflects real in-game behaviour. Worth doing for
  consistency: the same four methods also apply to `me_interface` and would apply to the other
  AE2 components once they are documented. Only caveat — they exist only while an RF mod
  (Thermal Expansion / CoFH) is loaded, which is true in GTNH; mention it in the description
  rather than removing the methods.

### E. Housekeeping — done

- `ComponentLibrary` in `lua/libs/component.lua` now lists all 56 component types, sorted.
  The `tilechests` field was a typo for the `tilechest` type and is gone.
- `README.md`'s component list is regenerated from the files, so the broken `tilechest.lua`
  link is fixed and nothing is missing. Regenerate it whenever a component is added.
