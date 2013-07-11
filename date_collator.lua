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
-- string.find(text, "text")


num_years = args[2]
month_day = os.date('-%m-%d - ')
returnString = ""

full_dates = {}
for i = 1, num_years do
	table.insert(full_dates, args[i+2] .. month_day)
end

for i = 1, num_years do
	returnString = returnString .. full_dates[i] .. "\n"
end

-- return returnString
return text

