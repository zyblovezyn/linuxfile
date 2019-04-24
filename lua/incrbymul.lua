#!/usr/local/bin/lua

local num=redis.call('GET',keys[1]);

if not num then
	return 0;
else
	local res=num*ARGV[1]
	redis.call('SET',keys[1],res);
	return res;
end

