
-- date_collator.lua
--[[
2013-07
Jesse Cummins
https://github.com/jessc
# With inspiration from evitiello:
https://github.com/evitiello/TrunkNotesScripts
# bug list:
# todo:
 - You also need to have the years you want to look for. (do you really need this?)
]]
--[[
-- this will give you the month-date string
return os.date('%m-%d')
]]

-- {{lua try.lua, 2, 2009, 2010}}


num_args = args[1]


returnString = ""
years = {}

for i = 1, num_args do
	table.insert(years, args[i+1])
end

for i = 1, num_args do
	returnString = returnString .. years[i] .. "\n"
end


return returnString


