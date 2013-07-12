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
-- {{lua try.lua, try_journal, 2, 2009, 2010}}



--[[
journal_name = wiki.get(args[1])
text = journal_name.contents

returnString = ""
full_dates = {}
num_years = args[2]
-- To make this work with the provided journal,
-- going to manually set month_day for now. Otherwise use:
-- month_day = os.date('-%m-%d - ')
month_day = "-02-19 - "


for i = 1, num_years do
	table.insert(full_dates, args[i+2] .. month_day)
end

for i = 1, num_years do
	returnString = returnString .. full_dates[i] .. "\n"
end

-- For some reason string.find is only working when:
start, fin = string.find(text, "2010-0")
-- but not when the below. what the heck?
-- start, fin = string.find(text, "\n2010-02")


returnString = start .. ", " .. fin .. "\n"
return returnString

]]

-- text = "2009-02-19 - First day of reading Proust and the Squid\n2010-02-19 - Did website work for clients"
text = "2010-02-19 - Did website work for clients"

-- This works:
start, fin = string.find(text, "2010-0")

-- This:
-- 2012-0
-- Returns this:
-- 1, 4
-- Why not return:
-- 1, 6?
-- Perhaps has to do with not interpreting "2010-0" as string?
-- And instead is subtracting or something?

-- This doesn't:
-- start, fin = string.find(text, "2010-02")

returnString = start .. ", " .. fin .. "\n"
return returnString

