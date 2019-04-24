--=====================================================
-- the reason this routine is needed is because lua does not
-- have a sort indexed table function
function table_sort(a, sortfield)
local new1 = {}
local new2 = {}
    for k,v in pairs(a) do
        table.insert(new1, { key=k, val=v } )
    end
    table.sort(new1, function (a,b) return (a.val[sortfield] < b.val[sortfield]) end)
    for k,v in pairs(new1) do
        table.insert(new2, v.val)
    end
    return new2
end

---============================================================
function padzero(s, count)
    return string.rep("0", count-string.len(s)) .. s
end

--========================================================================
-- get date parts for a given ISO 8601 date format (http://richard.warburton.it )
function get_date_parts(date_str)
  _,_,y,m,d=string.find(date_str, "(%d+)-(%d+)-(%d+)")
  return tonumber(y),tonumber(m),tonumber(d)
end

--====================================================
function getmonth(month)
    local months = { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" }
    return months[tonumber(month)]
end

--====================================================
function getday_posfix(day)
local idd = math.mod(day,10)
       return   (idd==1 and day~=11 and "st")  or (idd==2 and day~=12 and "nd") or (idd==3 and day~=13 and "rd") or "th"
end


--========================================================================
--  Given a date of certain date_format, returns the date parts yy,mm,dd
--  eg. "12 May 2007" with date_format "dd mmm yyyy"
--   or   "12.05.07" with date_format "dd.mm.yy"
--  will return 2007, 5, 12
--
function get_formatted_date_parts(date_str, date_format)
    local d,m,y, arr, x, yy, mm, dd, use_month_names
    local months = { jan=1, feb=2, mar=3, apr=4, may=5, jun=6, jul=7, aug=8, sep=9, oct=10, nov=11, dec=12 }

    if (date_format) then

        if string.find(date_format, "mmm") then
            use_month_names = true
        else
            use_month_names = false
        end

        d = string.find(date_format, "dd")
        m = string.find(date_format, "mm")
        y = string.find(date_format, "yy")

        arr = { { pos=y, b="yy" }, { pos=m, b="mm" } , { pos=d, b="dd" }  }
        arr = table_sort(arr, "pos")

        date_format = string.gsub(date_format,"yyyy","(%%d+)")
        date_format = string.gsub(date_format,"mmm","(%%a+)")
        date_format = string.gsub(date_format,"yy","(%%d+)")
        date_format = string.gsub(date_format,"mm","(%%d+)")
        date_format = string.gsub(date_format,"dd","(%%d+)")
        date_format = string.gsub(date_format," ","%%s")
    else
        date_format = "(%d+)-(%d+)-(%d+)"
        arr = { { pos=1, b="yy" }, { pos=2, b="mm" } , { pos=3, b="dd" }  }
    end

    if (date_str and date_str~="") then
        _, _, arr[1].c, arr[2].c, arr[3].c = string.find(string.lower(date_str), date_format)
    else
        return nil, nil, nil
    end


    arr = table_sort(arr, "b")
    yy = arr[3].c
    mm = arr[2].c
    dd = arr[1].c

    if (use_month_names) then

        mm = months[lower(string.sub(mm,1,3))]
        if (not mm) then
            error("Invalid month name.")
        end
    end

    -- for naughty people who still use two digit years.

    if (string.len(yy)==2) then
        if (tonumber(yy)>40) then
            yy = "19"..yy
        else
            yy = "20"..yy
        end
    end

    return tonumber(yy),tonumber(mm),tonumber(dd)
end



--========================================================================
-- Note : date_str has to be  ISO 8601 date format  ie. yyyy-mm-dd
--
function format_date(date_str, dateformat)
local iyy, imm, idd

    if (date_str and date_str~="") then
        iyy, imm, idd =  get_date_parts(date_str)
        dateformat = string.gsub(dateformat, "DDD",  idd..string.upper(getday_posfix(idd)))
        dateformat = string.gsub(dateformat, "ddd",  idd..getday_posfix(idd) )
        dateformat = string.gsub(dateformat, "dd", padzero(idd,2))
        dateformat = string.gsub(dateformat, "MMM", string.upper(getmonth(imm)))
        dateformat = string.gsub(dateformat, "mmm", getmonth(imm))
        dateformat = string.gsub(dateformat, "mm", padzero(imm,2))
        dateformat = string.gsub(dateformat, "yyyy", padzero(iyy,4))
        dateformat = string.gsub(dateformat, "yy", string.sub(padzero(iyy,4),3,4))
    else
        dateformat = ""
    end

    return(dateformat)
end

--===============================================
-- convert date to excel serial day number
--
function date_to_excel_date(dd, mm, yy)
local days, monthdays, leapyears, nonleapyears, nonnonleapyears

    monthdays= { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 }

    leapyears=tonumber(math.floor((yy-1900)/4));
    nonleapyears=tonumber(math.floor((yy-1900)/100))
    nonnonleapyears=tonumber(math.floor((yy-1600)/400))

    if ((math.mod(yy,4)==0) and mm<3) then
      leapyears = leapyears - 1
    end

    days= 365 * (yy-1900) + leapyears - nonleapyears + nonnonleapyears

    c=1
    while (c<mm) do
      days = days + monthdays[c]
    c=c+1
    end

    days=days+dd+1

    return days
end



-- Compute the difference in seconds between local time and UTC.
local function get_timezone()
  local now = os.time()
  return os.difftime(now, os.time(os.date("!*t", now)))
end
timezone = get_timezone()

-- Return a timezone string in ISO 8601:2000 standard form (+hhmm or -hhmm)
local function get_tzoffset(timezone)
  local h, m = math.modf(timezone / 3600)
  return string.format("%+.4d", 100 * h + 60 * m)
end
tzoffset = get_tzoffset(timezone)


--[[ debugging
for _, tz in ipairs(arg) do
  if tz == '-' then
    tz = timezone
  else
    tz = 0 + tz
  end
  print(tz, get_tzoffset(tz))
end
--]]

-- return the timezone offset in seconds, as it was on the time given by ts
-- Eric Feliksik
local function get_timezone_offset(ts)
	local utcdate   = os.date("!*t", ts)
	local localdate = os.date("*t", ts)
	localdate.isdst = false -- this is the trick
	return os.difftime(os.time(localdate), os.time(utcdate))
end





-- test
-- adate=os.date()

-- print(adate)

-- yy,mm,dd=get_formatted_date_parts(adate,"mm/dd/yyyy")
-- ISO_date=yy.."-"..mm.."-"..dd
-- print(ISO_date)


