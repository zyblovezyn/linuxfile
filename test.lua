local key=tostring(KEYS[1])
local value1=tostring(ARGV[1])
local expire=tonumber(ARGV[2])

local time=redis.call("TTL",key);

if time <= 1000 then
	local result=redis.call("SETEX",key,expire,value1)
	return result
end
 