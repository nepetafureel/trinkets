-- touch.lua made by nepetafureel for nepetafureel/trinkets on github and is subject to the terms of the MIT license
-- creates a blank file with the name provideds
local args = {...}
if not fs.exists(shell.resolve(args[1])) then local a = fs.open(shell.resolve(args[1]),"w") a.close() end