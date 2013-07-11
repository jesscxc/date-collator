
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
-- {{lua try.lua, 2, 2009, 2010}}


num_args = args[1]
month_day = os.date('-%m-%d - ')
returnString = ""
years = {}

full_dates = {}
for i = 1, num_args do
	table.insert(full_dates, args[i+1] .. month_day)
end

for i = 1, num_args do
	returnString = returnString .. full_dates[i] .. "\n"
end

return returnString


