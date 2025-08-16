-- pushd.lua made by nepetafureel for nepetafureel/trinkets on github and is subject to the terms of the MIT license
-- pushes a directory into the directory stack
-- we're going to use a lot of wonky, ass-backward hacky shit for this, popd, and dirs, since im bad at understanding stacks and whatnot
-- im really lazy, and i can't find a better way than the settings api
local args = {...}
-- since we're not dealing with the +N/-N/-n arguments, and i will burn that brige when i get to it, we're just going to slap in a catch-all.
if #args < 1 then error("Please provide a directory or pass 'help'.",0) elseif args[1] == "help" then print("pushd - push a directory to the top of the directory stack.\nusage:\n pushd <dir>\n pushd help") error() elseif not fs.exists(shell.resolve(args[1])) or not fs.isDir(shell.resolve(args[1])) then error("Please provide a valid directory.",0) end

-- quick and messy check, but more for clarity than anything else.
-- we check the output of 'shell.dir()', and if it's blank, we return "/",
-- since we're in the root, otherwise we return shell.dir().
-- and this is used once.
-- i could just implement this in the fucking calling action.
local function check_dir()
    if shell.dir() == "" then
        return "/"
    else
        return shell.dir()
    end
end

if not settings.get("trinkets.dirstack") then
    settings.define("trinkets.dirstack",{description="dirstack for nepetafureel/trinkets, primarily with the pushd, popd, and dirs implementations.",default={},type="table",}) settings.save()
end

-- we are going to blindly assume that we are dealing with 'trinkets.dirstack' being a table, and put 'shell.dir()' into it if it's empty.
local dirstack = settings.get("trinkets.dirstack")
if #dirstack < 1 then
    table.insert(dirstack,check_dir())
end

-- here we go baby, this is what we've been waiting for!!
table.insert(dirstack,args[1])
settings.set("trinkets.dirstack",dirstack) settings.save()
for k,v in pairs(dirstack) do write(v.." ") end print("")
shell.run("cd "..args[1])
-- oh wait thats it?
-- what the fuck was all that fanfare for?