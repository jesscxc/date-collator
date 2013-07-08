-- date_collator.lua

--[[
2013-07
Jesse Cummins
https://github.com/jessc

# bug list:
# todo:
 - You also need to have the years you want to look for. (do you really need this?)

]]


--[[

-- this will give you the month-date string
return os.date('%m-%d')


-- Tried hard to find a more elegant solution (such as setting a variable to ..., which is a table that contains all the args. Doesn't seem to work in Trunk Notes, so had to resort to the Get Stuff Done philosophy.

-- Note: This doesn't seem to work, yet, and it's unclear why not.

-- {{lua try.lua, true, 2, 100, 102}}
more_args = args[1]
num_args = args[2]

if more_args then
	if num_args == 2 then
		extra_arg_1 = args[2]
		extra_arg_2 = args[3]
		all_args = extra_arg_1, extra_arg_2
	elseif num_args == 3 then
		extra_arg_1 = args[2]
		extra_arg_2 = args[3]
		all_args = extra_arg_1, extra_arg_2, extra_arg_3
	elseif num_args == 4 then
		extra_arg_1 = args[2]
		extra_arg_2 = args[3]
		extra_arg_3 = args[4]
		all_args = extra_arg_1, extra_arg_2, extra_arg_3, extra_arg_4
	end
end

return all_args


]]


