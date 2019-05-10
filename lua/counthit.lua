-- page hit count
-- group by time minute hours day month year
-- choose zset colletion

-- 1 initial data

local initnum=1
for i=1,100 do
	redis.call("zadd","countpage",initnum,"page:"..i)
end


