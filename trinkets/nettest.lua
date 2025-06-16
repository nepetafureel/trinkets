-- nettest.lua made by nepetafureel for nepetafureel/trinkets on github and is subject to the terms of the MIT license
-- tests the http networking with either a given network address or a random common address
local args = {...}
local a = {"https://8.8.8.8/","https://example.com/","https://google.com/","https://youtube.com/","https://www.newgrounds.com/","https://github.com/"}
if #args < 1 then
    for b = 1,10 do local c = a[math.random(1,#a)] local d = http.get(a[math.random(1,#a)], { ["User-Agent"] = "nettest.lua/0.0" }) if d then print("reached:",c) elseif not d then error("network unreachable or address '"..c.."' does not exist/is blocked.") end end
else
    for e = 1,10 do local f = http.get(args[1], { ["User-Agent"] = "nettest.lua/0.0" }) if f then print("reached:",args[1]) elseif not f then error("network unreachable or address '"..args[1].."' does not exist/is blocked.") end end
end