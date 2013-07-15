-- date_collator.lua
--[[
2013-07
Jesse Cummins
https://github.com/jessc
# With inspiration from evitiello:
https://github.com/evitiello/TrunkNotesScripts
# bug list:
# todo:
]]

-- {{lua try.lua, try_journal, 2008}}


-- journal = wiki.get(args[1]).contents
-- start_year = args[2]
-- end_year = os.date("%Y")
journal = "2010-02-19 - Did website work for clients"
start_year = "2010"
end_year = "2011"

-- To make this work with the provided journal,
-- going to manually set month_day for now. Otherwise use:
-- month_day = os.date("-%m-%d - ")
month_day = "-02-19 - "
returnString = ""
full_dates = {}


for year = start_year, end_year do
	date = year .. month_day
	table.insert(full_dates, date)
end


-- This appears to be the only way to accurately get
-- the size of a table in Lua.
size = 0
for k, v in pairs(full_dates) do
    size = size + 1
end
print(size)

for i = 1, size do
	date = full_dates[i]
	date = string.gsub(date, "-", "%%-")

	-- returnString = "" .. date

	-- Why is this always returning nil ?
	value = string.find(journal, date)
	returnString = value

	-- start, fin = string.find(journal, date)
	-- returnString = returnString .. start .. ", " .. fin .. "\n"

	-- Something like, if find date in journal,
	-- add start and fin to returnString
	-- otherwise add nothing
end

return returnString

-- Looking at the above in the Lua demo interpreter,
-- http://www.lua.org/cgi-bin/demo
-- has an error message of:
-- input:18: attempt to call field 'getn' (a nil value)


-- -- This shows how to escape the strings properly so they can be searched.
-- -- Except that for some reason this doesn't seem to be working.
-- -- Rather, it works in the online interpreter, but not in Trunk Notes...
-- -- What the heck, Lua??
-- date = "2010-02-19 - "
-- journal = "2010-02-19 - Did website work for clients"
-- date = string.gsub(date, "-", "%%-")
-- print(date .. "\n")
-- start, fin = string.find(journal, date)
-- returnString = "" .. start .. ", " .. fin
-- print(returnString)
