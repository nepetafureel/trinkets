# trinkets
little programs for [ComputerCraft:Tweaked](https://computercraft.cc/) (and emulators like [CCEmuX](https://emux.cc/) and [CraftOS-PC](https://www.craftos-pc.cc/)) often based on real-life command line utilities. trinkets can be:

- based on real-life command line utilities (such as `cat` or `pwd`)
- original but helpful to the environment they're meant to be used in (such as a peripherals manager for emulators)

all trinkets showcased in this repository are made with three rules:

1. the top two lines must be program info
2. the program must fit in as little lines as possible even if it will sacrifice some code readability
3. never use ai

to contribute, you can fork this and make a trinket, then submit a pull request. if it follows these rules and the guideline of what a trinket is, it will be added :3

for information on individual trinkets, visit [the wiki](https://github.com/nepetafureel/trinkets/wiki/) :3

guidelines for making a trinket:

1. choose a real-life command utility to be inspired by or to recreate the basic function of.
2. the first line must follow this format: `<file name> by <your github user> for nepetafureel/trinkets on github and is subject to the terms of the MIT license`
3. the second line must be a short sentence about what the trinket does.
4. never leave space between blocks of code.
- NO!
```
local foo = "bar"

local bar = "foo"

print(bar,foo)
```
- YES!
```
local foo = "bar"
local bar = "foo"
print(bar,foo)
```
5. avoid using properly-named variables if you can. use the 26 letters of the alphabet. a notable exception to this is collecting arguments, which can be properly named `args` or some variation.
6. if your trinket makes http requests, please put `{ ["User-Agent"] = "<trinket name>/0.0" }` in the "headers" argument. for more information, see [ComputerCraft:Tweaked HTTP docs](https://tweaked.cc/module/http.html).
