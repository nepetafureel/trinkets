-- uname.lua made by nepetafureel for nepetafureel/trinkets on github and is subject to the terms of the MIT license
-- prints the current environment
local args = {...}
if #args < 1 then print(_HOST) end
if args[1] == "-a" then print(_HOST,"( Label",os.getComputerLabel(),") ( ID",os.getComputerID(),") (",_VERSION,")") end
if args[1] == "-m" then if os.getComputerLabel() == nil then print("No label for this computer.") else print(os.getComputerLabel()) end end
if args[1] == "-o" then print("CraftOS") end