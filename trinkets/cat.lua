-- cat.lua made by nepetafureel for nepetafureel/trinkets on github and is subject to the terms of the MIT license
-- prints a file's contents to output
local args = {...}
if not fs.exists(shell.resolve(args[1])) then
    error("no such: "..args[1])
end
local a = fs.open(shell.resolve(args[1]),"r") print(a.readAll()) a.close()