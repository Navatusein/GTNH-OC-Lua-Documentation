import io, os, re, glob

PROJ = r"D:\Projects\GTNH-OC-Lua-Documentation"
COMP = os.path.join(PROJ, "lua", "components")
BASE = "https://github.com/Navatusein/GTNH-OC-Lua-Documentation/blob/main/lua/components/"

# type -> (group, what the block or item is)
INFO = {
    # --- OpenComputers: cards and upgrades ---------------------------------
    "gpu": ("oc-card", "Graphics Card"),
    "modem": ("oc-card", "Network Card and Wireless Network Card"),
    "internet": ("oc-card", "Internet Card"),
    "redstone": ("oc-card", "Redstone Card, in both the plain and the wireless variant"),
    "data": ("oc-card", "Data Card"),
    "tunnel": ("oc-card", "Linked Card"),
    "debug": ("oc-card", "Debug Card, creative only"),
    "world_sensor": ("oc-card", "World Sensor Card"),
    "tps_card": ("oc-card", "TPS Card"),
    "eeprom": ("oc-card", "EEPROM"),
    "filesystem": ("oc-card", "hard drive, floppy or RAID in managed mode"),
    "drive": ("oc-card", "hard drive in unmanaged mode"),
    "keyboard": ("oc-card", "Keyboard, no methods of its own"),
    "database": ("oc-upgrade", "Database Upgrade"),
    "inventory_controller": ("oc-upgrade", "Inventory Controller Upgrade"),
    "tank_controller": ("oc-upgrade", "Tank Controller Upgrade"),
    "crafting": ("oc-upgrade", "Crafting Upgrade"),
    "generator": ("oc-upgrade", "Generator Upgrade"),
    "chunkloader": ("oc-upgrade", "Chunkloader Upgrade"),
    "navigation": ("oc-upgrade", "Navigation Upgrade"),
    "experience": ("oc-upgrade", "Experience Upgrade"),
    "piston": ("oc-upgrade", "Piston Upgrade"),
    "tractor_beam": ("oc-upgrade", "Tractor Beam Upgrade"),
    "trading": ("oc-upgrade", "Trading Upgrade"),
    "sign": ("oc-upgrade", "Sign Upgrade"),
    "leash": ("oc-upgrade", "Leash Upgrade"),
    "angel": ("oc-upgrade", "Angel Upgrade, no methods of its own"),
    "barcode_reader": ("oc-upgrade", "Barcode Reader Upgrade, no methods of its own"),
    "geolyzer": ("oc-upgrade", "Geolyzer"),
    "motion_sensor": ("oc-upgrade", "Motion Sensor"),
    "configurator": ("oc-upgrade", "Configurator Upgrade, which edits EnderIO conduits"),
    # --- OpenComputers: blocks and machines --------------------------------
    "computer": ("oc-block", "a computer case or a robot, seen from another machine"),
    "robot": ("oc-block", "the robot, from inside and through an adapter"),
    "drone": ("oc-block", "the drone"),
    "tablet": ("oc-block", "the tablet, from the program running on it"),
    "microcontroller": ("oc-block", "a microcontroller, seen from another machine"),
    "screen": ("oc-block", "Screen, all three tiers"),
    "transposer": ("oc-block", "Transposer"),
    "hologram": ("oc-block", "Hologram Projector"),
    "printer3d": ("oc-block", "3D Printer"),
    "disk_drive": ("oc-block", "Disk Drive block and the server rack mountable"),
    "assembler": ("oc-block", "Assembler"),
    "relay": ("oc-block", "Relay and Access Point"),
    "net_splitter": ("oc-block", "Net Splitter"),
    "waypoint": ("oc-block", "Waypoint"),
    # --- Applied Energistics 2 and addons ----------------------------------
    "me_controller": ("ae2", "ME Controller"),
    "me_interface": ("ae2", "ME Interface, block and cable part"),
    "me_interface_terminal": ("ae2", "ME Interface Terminal"),
    "me_exportbus": ("ae2", "ME Export Bus"),
    "me_importbus": ("ae2", "ME Import Bus"),
    "me_storagebus": ("ae2", "ME Storage Bus"),
    "me_cellworkbench": ("ae2", "ME Cell Workbench"),
    "tilechest": ("ae2", "ME Chest"),
    "aemultipart": ("ae2", "a cable bus, that is any block with AE2 parts on it"),
    "upgrade_me": ("ae2", "ME Upgrade for a robot or a drone"),
    "fluid_interface": ("ae2fc", "ME Fluid Interface, block and cable part"),
    "fluid_exportbus": ("ae2fc", "ME Fluid Export Bus"),
    "fluid_importbus": ("ae2fc", "ME Fluid Import Bus"),
    "fluid_storagebus": ("ae2fc", "ME Fluid Storage Bus"),
    "level_maintainer": ("ae2fc", "Level Maintainer"),
    "oc_pattern_editor": ("ae2fc", "OC Pattern Editor"),
    "essentia_exportbus": ("thaumicenergistics", "ME Essentia Export Bus"),
    "essentia_importbus": ("thaumicenergistics", "ME Essentia Import Bus"),
    "essentia_storagebus": ("thaumicenergistics", "ME Essentia Storage Bus"),
    "thaumicenergistics_block_essentia_vibration_chamber":
        ("thaumicenergistics", "Essentia Vibration Chamber"),
    # --- GregTech ----------------------------------------------------------
    "gt_machine": ("gt", "any GregTech machine: progress, energy, circuit configuration"),
    "gt_energycontainer": ("gt", "a block that only stores EU, such as a battery box"),
    "gt_batterybuffer": ("gt", "Battery Buffer"),
    "bec_diode": ("gt", "Bartworks Energy Cluster diode"),
    "bec_io_node": ("gt", "Bartworks Energy Cluster IO node"),
    "bec_storage": ("gt", "Bartworks Energy Cluster storage block"),
    # --- Computronics ------------------------------------------------------
    "chat_box": ("computronics", "Chat Box"),
    "camera": ("computronics", "Camera"),
    "radar": ("computronics", "Radar"),
    "sound": ("computronics", "Sound Card"),
    "noise": ("computronics", "Noise Card"),
    "beep": ("computronics", "Beep Card"),
    "particle": ("computronics", "Particle Card"),
    "self_destruct": ("computronics", "Self Destruct Card"),
    "tape_drive": ("computronics", "Tape Drive"),
    "speech_box": ("computronics", "Speech Box block"),
    "speech": ("computronics", "Speech Upgrade for a robot or a drone"),
    "colors": ("computronics", "Colorful Upgrade for a robot or a drone"),
    "colorful_lamp": ("computronics", "Colorful Lamp"),
    "iron_noteblock": ("computronics", "Iron Note Block"),
    "cipher": ("computronics", "Cipher Block"),
    "advanced_cipher": ("computronics", "Advanced Cipher Block"),
    # --- OpenSecurity ------------------------------------------------------
    "os_keypad": ("opensecurity", "Keypad"),
    "os_door": ("opensecurity", "door controller"),
    "os_alarm": ("opensecurity", "Alarm"),
    "os_datablock": ("opensecurity", "Data Block"),
    "os_energyturret": ("opensecurity", "Energy Turret"),
    "os_entdetector": ("opensecurity", "Entity Detector"),
    "os_biometric": ("opensecurity", "Biometric Reader"),
    "os_cardwriter": ("opensecurity", "Card Writer"),
    "os_magreader": ("opensecurity", "Magnetic Card Reader"),
    "os_rfidreader": ("opensecurity", "RFID Reader"),
    # --- Forestry and Magic Bees -------------------------------------------
    "beekeeper": ("forestry", "Beekeeper Upgrade for a robot or a drone"),
    "forestry_analyzer": ("forestry", "Analyzer"),
    "alveary": ("forestry", "an energised alveary"),
    "for_alveary_0": ("forestry", "an alveary block"),
    "for_alveary_3": ("forestry", "an energised alveary block"),
    "for_alveary_4": ("forestry", "an energised alveary block"),
    "for_alveary_6": ("forestry", "an alveary block"),
    "tile_for_apiculture_0_name": ("forestry", "an apiary or bee house"),
    "tile_for_apiculture_2_name": ("forestry", "an apiculture block"),
    "caninv": ("forestry", "a bee housing, named after its inventory"),
    "items": ("forestry", "a bee housing, named after its inventory"),
    "swarminv": ("forestry", "a bee housing, named after its inventory"),
    "magicbees_magicapiary": ("forestry", "Magic Apiary from Magic Bees"),
    # --- Thaumcraft --------------------------------------------------------
    "infusion_matrix": ("thaumcraft", "runic matrix of an infusion altar"),
    "arcane_crafting": ("thaumcraft", "Arcane Crafting Upgrade for a robot or a drone"),
    "blockjar_0": ("thaumcraft", "a jar"),
    "blockessentiareservoir": ("thaumcraft", "Essentia Reservoir"),
    "blockmetaldevice_0": ("thaumcraft", "a metal device that only stores essentia"),
    "blockmetaldevice_1": ("thaumcraft", "a metal device that moves essentia, alembic or centrifuge"),
    # --- IndustrialCraft 2 -------------------------------------------------
    "reactor": ("ic2", "nuclear reactor block"),
    "reactor_chamber": ("ic2", "reactor chamber"),
    "reactor_redstone_port": ("ic2", "reactor redstone port"),
    # --- Railcraft ---------------------------------------------------------
    "anchor": ("railcraft", "world anchor"),
    "boiler_firebox": ("railcraft", "firebox of a boiler"),
    "steam_turbine": ("railcraft", "Steam Turbine"),
    "locomotive_relay": ("railcraft", "Locomotive Relay, driven by Computronics"),
    "ticket_machine": ("railcraft", "Ticket Machine, driven by Computronics"),
    # --- Draconic Evolution -------------------------------------------------
    "flux_gate": ("draconic", "Flux Gate, an RF transfer limiter"),
    "fluid_gate": ("draconic", "Fluid Gate, a fluid transfer limiter"),
    "draconic_reactor": ("draconic", "reactor, through an Energy Injector or a Stabilizer"),
    "draconic_rf_storage": ("draconic", "Energy Pylon of an energy core"),
    "particle_generator": ("draconic", "Particle Generator"),
    "draconic_chest": ("draconic", "Draconic Chest, only its RF energy methods"),
    "draconicevolution_energyinfuser": ("draconic", "Energy Infuser, only its RF energy methods"),
    "draconicevolution_grinder": ("draconic", "Mob Grinder, only its RF energy methods"),
    "draconicevolution_energycrystal0": ("draconic", "energy core crystal, variant 0"),
    "draconicevolution_energycrystal1": ("draconic", "energy core crystal, variant 1"),
    "draconicevolution_energycrystal2": ("draconic", "energy core crystal, variant 2"),
    "draconicevolution_energycrystal3": ("draconic", "energy core crystal, variant 3"),
    "draconicevolution_energycrystal4": ("draconic", "energy core crystal, variant 4"),
    "draconicevolution_energycrystal5": ("draconic", "energy core crystal, variant 5"),
    # --- other mods --------------------------------------------------------
    "glasses": ("other", "OpenGlasses — the AR glasses terminal"),
    "stargate": ("other", "SGCraft — a stargate"),
    "info_panel": ("other", "Display Panels — Information Panel, basic and advanced"),
    "blood_altar": ("other", "Blood Magic — Blood Altar"),
    "master_ritual_stone": ("other", "Blood Magic — Master Ritual Stone"),
    "ender_chest": ("other", "EnderStorage — an ender chest"),
    "enderchest_1": ("other", "EnderStorage — an ender chest under a derived name"),
    "enderio_machine": ("other", "EnderIO — a machine"),
    "draconicevolution_generator": ("draconic", "a generator, only its RF energy methods"),
    "generatorfurnace": ("other", "a furnace generator"),
    "bc_pipe": ("other", "BuildCraft — a pipe"),
    "tierOneTurretBase": ("turrets", "tier one turret base, the turret API"),
    "tierTwoTurretBase": ("turrets", "tier two turret base, the turret API"),
    "tierThreeTurretBase": ("turrets", "tier three turret base, the turret API"),
    "tierFourTurretBase": ("turrets", "tier four turret base, the turret API"),
    "tierFiveTurretBase": ("turrets", "tier five turret base, the turret API"),
    "modtur_turretbaseone": ("turrets", "tier one turret base, the energy and essentia API"),
    "modtur_turretbasetwo": ("turrets", "tier two turret base, the energy and essentia API"),
    "modtur_turretbasethree": ("turrets", "tier three turret base, the energy and essentia API"),
    "modtur_turretbasefour": ("turrets", "tier four turret base, the energy and essentia API"),
    "modtur_turretbasefive": ("turrets", "tier five turret base, the energy and essentia API"),
    # --- vanilla -----------------------------------------------------------
    "furnace": ("vanilla", "Furnace"),
    "beacon": ("vanilla", "Beacon"),
    "brewing_stand": ("vanilla", "Brewing Stand"),
    "comparator": ("vanilla", "Comparator"),
    "jukebox": ("vanilla", "Jukebox"),
    "note_block": ("vanilla", "Note Block"),
}

GROUPS = [
    ("oc-card", "OpenComputers — cards"),
    ("oc-upgrade", "OpenComputers — upgrades"),
    ("oc-block", "OpenComputers — blocks and machines"),
    ("ae2", "Applied Energistics 2"),
    ("ae2fc", "AE2 Fluid Craft Rework"),
    ("thaumicenergistics", "Thaumic Energistics"),
    ("gt", "GregTech"),
    ("computronics", "Computronics"),
    ("opensecurity", "OpenSecurity"),
    ("forestry", "Forestry and Magic Bees"),
    ("thaumcraft", "Thaumcraft"),
    ("ic2", "IndustrialCraft 2"),
    ("railcraft", "Railcraft"),
    ("turrets", "Open Modular Turrets"),
    ("draconic", "Draconic Evolution"),
    ("other", "Other mods"),
    ("vanilla", "Vanilla blocks, through an adapter"),
]

files = {}
for f in sorted(os.listdir(COMP)):
    if not f.endswith(".lua"):
        continue
    s = io.open(os.path.join(COMP, f), encoding="utf-8").read()
    m = re.search(r'---@field\s+type\s+["\']([^"\']+)', s)
    if m:
        files[m.group(1)] = f

missing = sorted(set(files) - set(INFO))
if missing:
    raise SystemExit("no group for: " + ", ".join(missing))
stale = sorted(set(INFO) - set(files))
if stale:
    raise SystemExit("no file for: " + ", ".join(stale))

turret_abstract = "abstracts/base-turret-base.lua"
def anchor(title):
    a = title.lower()
    a = re.sub(r"[^a-z0-9 -]", "", a)
    return "#" + a.replace(" ", "-")


index, lines = [], []
for key, title in GROUPS:
    members = sorted((t for t in files if INFO[t][0] == key), key=str.lower)
    if not members:
        continue
    index.append("[%s](%s) (%d)" % (title, anchor(title), len(members)))
    lines.append("")
    lines.append("#### " + title)
    lines.append("")
    lines.append("| Component | What it is |")
    lines.append("| --- | --- |")
    for t in members:
        target = turret_abstract if t.startswith("tier") else files[t]
        lines.append("| [`%s`](%s%s) | %s |" % (t, BASE, target, INFO[t][1]))

# --- libraries --------------------------------------------------------------
LIB_BASE = "https://github.com/Navatusein/GTNH-OC-Lua-Documentation/blob/main/lua/libs/"

LIBS = [
    ("What a script reaches for", [
        ("component", "the components attached to this machine"),
        ("computer", "the machine itself: energy, uptime, signals, shutdown"),
        ("event", "waiting for and reacting to signals"),
        ("filesystem", "files and directories, mounts and paths"),
        ("io", "opening files and the standard streams"),
        ("term", "reading and writing on the terminal"),
        ("text", "trimming, padding, wrapping and tokenizing strings"),
        ("unicode", "string functions that count characters, not bytes"),
        ("serialization", "turning tables into text and back"),
        ("os", "time, environment variables, sleeping, running commands"),
        ("shell", "the working directory, aliases, resolving and running programs"),
        ("internet", "HTTP requests and TCP sockets"),
        ("thread", "running several things at once"),
        ("keyboard", "key codes and which keys are held down"),
        ("colors", "the sixteen dye colours by name"),
        ("sides", "the six sides by name, and their opposites"),
        ("note", "note block pitches by name and frequency"),
        ("uuid", "generating a random address"),
        ("robot", "moving, turning and interacting, for a robot"),
        ("bit32", "bitwise operations on 32 bit integers"),
        ("nbt", "reading the NBT trees of a Data Card as plain tables"),
        ("buffer", "the buffered stream that `io.open` returns"),
    ]),
    ("Lower level, mostly used by the system", [
        ("tty", "the terminal device `term` is built on and inherits from"),
        ("process", "the process table, environments and handles"),
        ("package", "module loading, that is what stands behind `require`"),
        ("devfs", "the `/dev` file system, where components appear as files"),
        ("vt100", "the ANSI escape sequences the terminal understands"),
        ("transforms", "range helpers for tables, used while parsing command lines"),
    ]),
]

lib_lines = []
for title, members in LIBS:
    lib_lines.append("")
    lib_lines.append("#### " + title)
    lib_lines.append("")
    lib_lines.append("| Library | What it is for |")
    lib_lines.append("| --- | --- |")
    for name, what in members:
        lib_lines.append("| [`%s`](%s%s.lua) | %s |" % (name, LIB_BASE, name, what))

on_disk = {os.path.basename(p)[:-4] for p in glob.glob(os.path.join(PROJ, "lua", "libs", "*.lua"))}
listed = {n for _, members in LIBS for n, _ in members}
if on_disk - listed:
    raise SystemExit("library not listed: " + ", ".join(sorted(on_disk - listed)))
if listed - on_disk:
    raise SystemExit("library has no file: " + ", ".join(sorted(listed - on_disk)))

readme = io.open(os.path.join(PROJ, "README.md"), encoding="utf-8").read()
lib_marker = "At the moment documentation has been written for the following libraries:"
lib_start = readme.index(lib_marker)
lib_end = readme.index('<a id="what-already-done-components"></a>')
readme = (readme[:lib_start]
          + "Documentation is ready for these %d libraries.\n" % len(listed)
          + "\n".join(lib_lines) + "\n\n"
          + readme[lib_end:])

marker = '<a id="what-already-done-components"></a>'
start = readme.index(marker) + len(marker) + 1
head = readme[:start] + chr(10)
new = (
    "Documentation is ready for the following %d components, grouped by the mod that\n"
    "provides them. Some names look odd — `caninv`, `blockjar_0`, `tile_for_apiculture_0_name` —\n"
    "because OpenComputers derives a component name from the block itself whenever no driver\n"
    "declares one. Those are the names the game really answers to.\n\n" % len(files)
) + " · ".join(index) + "\n" + "\n".join(lines) + "\n"
io.open(os.path.join(PROJ, "README.md"), "w", encoding="utf-8").write(head + new)
print("wrote README with", len(files), "components in", len(GROUPS), "groups")
