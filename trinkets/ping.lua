-- ping.lua made by nepetafureel for nepetafureel/trinkets on github and is subject to the terms of the MIT license
-- tests if the address provided is reachable
local args = {...}
if #args < 1 then
    error("I need an address to test.",0)
end
if args[1] == "-c" then
    if args[2] and args[3] then print("Pinging '"..args[3].."' "..args[2].." times.") end
    for a = 1, args[2] do local b = http.get(args[3],{ ["User-Agent"] = "ping.lua/0.0" }) if not b then printError("["..a.."] failure to connect or rate-limited: "..args[3]) else print("["..a.."] connected: "..args[3]) end end
else
    local c = 0
    local d = 0
    repeat local e = http.get(args[1],{ ["User-Agent"] = "ping.lua/0.0" }) d = d+1 if not e then printError("["..d.."] failure to connect or rate-limited: "..args[1]) c = c+1 else print("["..d.."] connected: "..args[1]) end until c == 10 or d == 50
    print("Successful connects: "..d.."\nFailed connects: "..c)
end