<<<<<<< HEAD
return {KEYS[1],KEYS[2],ARGV[1],ARGV[2]}
=======
local key=tostring(KEYS[1])
local value1=tostring(ARGV[1])
local expire=tonumber(ARGV[2])

local time=redis.call("TTL",key);

if time <= 1000 then
	local result=redis.call("SETEX",key,expire,value1)
	return result
end
 
>>>>>>> 7bb9d8ce05bbcc1a0b7e4983c83f780f02a258de
