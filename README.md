# GTNH-OC-Lua-Documentation

> [!CAUTION]
> The documentation is written for a modified version of [Open Computers](https://github.com/GTNewHorizons/OpenComputers) from GTNH modpack.


## Content
- [Information](#information)
- [How to install](#how-to-install)
- [How to use](#how-to-use)
- [What's already done](#what-already-done)

<a id="information"></a>

## Information

This documentation is written for the VS Code IDE and Lua extension by sumneko. 
It adds autocomplete code and function descriptions of Open Computers components and libraries. 

> [!NOTE]  
> The documentation is written using generative models of artificial intelligence.

![An example of the autocomplete documentation in action in vs code.](docs/example-use.png)

<a id="how-to-install"></a>

## How to install

1. Install extension `Lua by sumneko`: [link](https://marketplace.visualstudio.com/items?itemName=sumneko.lua)
2. Open the VS code settings (<kbd>Ctrl</kbd>+<kbd>,</kbd>).
3. Search for `Lua.workspace.library`.
4. Click `Add Item` and enter the path to `docs` folder in the input.
5. Click OK

![Add the path to the the docs in the Lua.workspace.library setting.](docs/how-to-install.png)

<a id="how-to-use"></a>

## How to use

To use it, just import the required library and if there is documentation for it, everything will work automatically.

If you want to use documentation for components, pass the component type as parameter when calling functions:

- For `component.proxy`
  ```lua
  local proxy = component.proxy("address", "type")
  ```

- For `component.getPrimary`
  ```lua
  local proxy = component.getPrimary("type")
  ```

For a list of supported components, see the section [What's already done](#what-already-done-components)

![An example of autocomplete documentation from component.](docs/example-component.png)

<a id="what-already-done"></a>

## What's already done

At the moment documentation has been written for the following libraries:

- colors
- component
- event
- keyboard
- os
- robot
- serialization
- sides

<a id="what-already-done-components"></a>

Documentation is also ready for the following components:

- database
- glasses
- gpu
- gt_machine
- level_maintainer
- me_controller
- me_exportbus
- me_interface
- redstone
- screen
- tilechest
- transposer
