package.path="/usr/local/src/redis-lua/src/redis.lua;" 
pcall(require,"luarocks.require")

local redis=require 'redis'
local client=redis:connect("unix:/tmp/redis.sock")
local response=client.ping()
print(response)
