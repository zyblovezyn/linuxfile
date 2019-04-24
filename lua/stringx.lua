local s=table.concat({"a","b","c"},",")
print(s)


local example="an example string"

for i in string.gmatch(example,"%S+") do
	print(i)
end

