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

-- Instead of using multiple years in the arguments list,
-- take in only a start year and
-- use the end year as the current year:
-- start_year, end_year = cur_year


journal = wiki.get(args[1])
text = journal.contents

-- To make this work with the provided journal,
-- going to manually set month_day for now. Otherwise use:
-- month_day = os.date("-%m-%d - ")
month_day = "-02-19 - "
returnString = ""
full_dates = {}
num_years = args[2]

-- start_year = args[2]
-- end_year = os.date("%Y")


for i = 1, num_years do
	table.insert(full_dates, args[i+2] .. month_day)
end

for i = 1, num_years do
	returnString = returnString .. full_dates[i] .. "\n"
end

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


return returnString



