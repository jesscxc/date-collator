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
journal = "2009-01-14 - Helped wheelchair man up hill\n2009-02-19 - First day of reading Proust and the Squid\n2010-02-19 - Did website work for clients\n2011-08-17 - Read through Genghis Khan book, worked on speech"
start_year = "2005"
end_year = "2012"

-- To make this work with the provided journal,
-- going to manually set month_day for now. Otherwise use:
-- month_day = os.date("-%m-%d - ")
month_day = "-02-19 - "
returnString = ""
full_dates = {}
day_text = ""


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

for i = 1, size do
	date = full_dates[i]
	date = string.gsub(date, "-", "%%-")

	start, fin = string.find(journal, date)
	if start == nil then
	  -- pass
	else
		d_start, d_fin = string.find(journal, "\n", start)
		if d_start == nil then
			-- pass
		else
			day_text = day_text .. start .. ", " .. d_fin .. "\n"
			-- Something like:
			-- day_text = day_text .. (string.get journal d_start d_fin) .. "\n"
			returnString = returnString .. day_text .. "\n\n"
		end

		-- returnString = returnString .. day_text .. "\n\n"
		-- returnString = returnString .. start .. ", " .. fin .. "\n"
	end


	-- Something like, if find date in journal,
	-- add start and fin to returnString, otherwise add nothing.
	-- Then set day_text = to string.find from start to the next "\n".
	-- Join all these day_texts with "\n" and return them.
end

-- return returnString
return day_text



