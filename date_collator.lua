
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

for i = 2, (num_args + 1) do
	-- returnString = returnString .. args[
	returnString = returnString .. i .. "\n"
end

-- all_args = {}
-- if num_args == 2 then
-- 	return "true"
-- 	extra_arg_1 = args[2]
-- 	extra_arg_2 = args[3]
-- 	-- table.insert(all_args, extra_arg_1)
-- end


extra_arg_1 = args[2]
returnString = returnString .. extra_arg_1

return returnString

