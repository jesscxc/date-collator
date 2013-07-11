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

-- For some reason string.find is only working
-- seemingly when there are spaces around words?
start, fin = string.find(text, "Stratocaster")
returnString = start .. ", " .. fin .. "\n"


return returnString



