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

def successful_squirrel_party?(nuts, is_weekend)
	if is_weekend && nuts >=40
		return true
	end
	if nuts >= 40 && nuts <= 60
		return true
	end
	return false
end

def ticket(a, b, c)
	if a+b == 10 || a+c == 10 || b+c == 10
		return 10
	end
	if a+b == 10+a+c || a+b == 10+b+c
		return 5
	end

	return 0
end


# TODO - write in_order?
def in_order?(a, b, c, bOK)
	if bOK
		if c > a
			return true
		end
	end
	if a < b && b < c
		return true
	end
	return false
end
# TODO - write less_by_ten?

# TODO - write fizz_string

# TODO - write first_last_six?

# TODO - write rotate_left

# TODO - write double23?
