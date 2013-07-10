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




--
-- Displays the last 20 pages that have been modified.
--
function string.starts(String,Start)
   return string.sub(String, 1, string.len(Start)) == Start
end

returnString = ""

pageTimes = {}
pageTimeMapping = {}

for pageIteration, pageTitle in ipairs(wiki.titles()) do
	pageUpdatedTime = wiki.get(pageTitle).updated
	table.insert(pageTimes, pageUpdatedTime)
	pageTimeMapping[pageUpdatedTime] = pageTitle
end
table.sort(pageTimes, function(a,b) return a>b end)

for i = 1, 5 do
	returnString = returnString .. "[[" .. pageTimeMapping[pageTimes[i]] .. "]]\n"
end

returnString = returnString .. args[2]

return returnString





