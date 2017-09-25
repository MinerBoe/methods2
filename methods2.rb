########################################
#
# Methods2
#
#	Instructions and definitions here:
#
#	github.com/mvhs-apcs/methods2
#
#	Write the tests first!
#	Then implement each function.
#
#	Don't forget to commit after each
#	method.
#
########################################

def elevenish?(int)
	if int % 11 == 0
		return true
	end
	if (int-1)% 11 == 0
		return true
	end
	return false
end

# TODO - write ice_cream_party?
def ice_cream_party?(ice_cream, candy)
	if ice_cream < 5 || candy < 5
		return 0
	end
	if ice_cream >= (2*candy) || candy >= (2*ice_cream)
		return 2
	end
	if ice_cream >= 5 && candy >= 5
		return 1
	end
end

# TODO - write successful_squirrel_party?

# TODO - write ticket

# TODO - write in_order?

# TODO - write less_by_ten?

# TODO - write fizz_string

# TODO - write first_last_six?

# TODO - write rotate_left

# TODO - write double23?
