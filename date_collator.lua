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

-- {{lua date_collator.lua, journal, 2000}}


journal = wiki.get(args[1]).contents

start_year = args[2]
end_year = os.date("%Y")
month_day = os.date("-%m-%d - ")

returnString = ""
full_dates = {}
day_text = ""

for year = start_year, end_year do
	date = year .. month_day
	table.insert(full_dates, date)
end


-- This appears to be the only way to accurately get
-- the size of a table in Lua, if it might be nil.
size = 0
for k, v in pairs(full_dates) do
    size = size + 1
end


for i = 1, size do
	date = full_dates[i]
	date = string.gsub(date, "-", "%%-")

	start, fin = string.find(journal, date)
	if not (start == nil) then
		d_start, d_fin = string.find(journal, "\n", start)
		if not (d_start == nil) then
			returnString = returnString .. string.sub(journal, start, d_fin)
		end
	else
	end
end


return returnString


