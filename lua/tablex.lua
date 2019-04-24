do
   -- Avoid heap allocs for performance
   local fcomp_default = function( a,b ) return a < b end
   function table.bininsert(t, value, fcomp)
      -- Initialise compare function
      local fcomp = fcomp or fcomp_default
      --  Initialise numbers
      local iStart,iEnd,iMid,iState = 1,#t,1,0
      -- Get insert position
      while iStart <= iEnd do
         -- calculate middle
         iMid = math.floor( (iStart+iEnd)/2 )
         -- compare
         if fcomp( value,t[iMid] ) then
            iEnd,iState = iMid - 1,0
         else
            iStart,iState = iMid + 1,1
         end
      end
      table.insert( t,(iMid+iState),value )
      return (iMid+iState)
   end

   -- show all table elements
   function table.printall(t)

		if next(t) ~= nil then
			print("key	".."value")
			for k,v in ipairs(t) do
				print(k,v)
			end
		end
	end


	 -- Avoid heap allocs for performance
   local default_fcompval = function( value ) return value end
   local fcompf = function( a,b ) return a < b end
   local fcompr = function( a,b ) return a > b end
   function table.binsearch( tbl,value,fcompval,reversed )
      -- Initialise functions
      local fcompval = fcompval or default_fcompval
      local fcomp = reversed and fcompr or fcompf
      --  Initialise numbers
      local iStart,iEnd,iMid = 1,#tbl,0
      -- Binary Search
      while iStart <= iEnd do
         -- calculate middle
         iMid = math.floor( (iStart+iEnd)/2 )
         -- get compare value
         local value2 = fcompval( tbl[iMid] )
         -- get all values that match
         if value == value2 then
            local tfound,num = { iMid,iMid },iMid - 1
            while value == fcompval( tbl[num] ) do -- ERROR: this may cause fail in fcompval if num is out of range and tbl[num] is nil
               tfound[1],num = num,num - 1
            end
            num = iMid + 1
            while value == fcompval( tbl[num] ) do -- ERROR: this may cause fail in fcompval if num is out of range and tbl[num] is nil
               tfound[2],num = num,num + 1
            end
            return tfound
         -- keep searching
         elseif fcomp( value,value2 ) then
            iEnd = iMid - 1
         else
            iStart = iMid + 1
         end
      end
   end

	-- Ensure that that the element at i is in the right position,
-- and return a closure which can be used for continuing the sort.
function quicksorter(i, vec, low, high)
  if low >= high then
    return quicksorter
  else -- low < high
    -- partition the vector and initialize the child closures
    local middle = partition(vec, low, high)
    local left, right = quicksorter

    -- Create the promise
    local function self(i, vec, low, high)
      if i < middle then
        left = left(i, vec, low, middle-1)
        return self
      elseif i > middle then
        right = right(i, vec, middle+1, high)
        return self
      end
    end

    -- Force the promise until i is in the right position
    return self(i, vec, low, high)
  end
end
function lazysort(vec, low, high)
  local sorter = quicksorter
  return function(i)
    sorter = sorter(i, vec, low, high)
    return vec[i]
  end
end


end
-- CHILLCODE?






t = {}
table.bininsert(t,  5)

table.bininsert(t,  4)

table.bininsert(t,  6)

table.bininsert(t,  5)

table.bininsert(t,  6)

table.bininsert(t,  4)

table.bininsert(t,  0)
table.printall(t)


local v = table.binsearch(t, 4)

print(v[1])

test = {}; for i = 1, 500 do test[i] = math.random(1e4) end
getter = lazysort(test)


print "DONE"
