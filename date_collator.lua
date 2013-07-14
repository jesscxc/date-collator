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


journal = wiki.get(args[1]).contents

-- To make this work with the provided journal,
-- going to manually set month_day for now. Otherwise use:
-- month_day = os.date("-%m-%d - ")
month_day = "-02-19 - "
returnString = ""
full_dates = {}
start_year = args[2]
end_year = os.date("%Y")


for year = start_year, end_year do
	date = year .. month_day
	table.insert(full_dates, date)
end

size = table.getn(full_dates)
for i = 1, size do
	returnString = returnString .. full_dates[i] .. "\n"
end

return returnString


-- Use this to find the starting positions of
-- where each line is that has the journal entry.
-- See if with Lua you can start a string.find at a specific location,
-- so you could start searching at 'start' and go to '\n', then
-- take that whole bit and add to returnString
-- start, fin = string.find(text, "2010%-02%-19")
-- returnString = start .. ", " .. fin .. "\n"


-- OK, so now return only the lines
-- that start with the full_date
--[[
Probably has something to do with finding the size of full_dates,
 running through each one, getting the place it matches (perhaps
  via string.find), going to the end of the line, copy that
   text into a new table, with each date separated.
Then go through those dates, put onto returnString.
]]


