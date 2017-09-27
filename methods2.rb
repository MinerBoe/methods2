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

def less_by_ten?(a, b, c)
	if a > b + 10 || a > c + 10 || b > c + 10 || b > a + 10 || c > b + 10 || c > a + 10
		return true
	end
	return false
end

def fizz_string(str)
	unchanged = str
	str = str.downcase()
	if str[0] == 'f'
		if str[str.length - 1] == 'b'
			return 'FizzBuzz'
		end
		return 'Fizz'
	end
	if str[str.length - 1] == 'b'
		return 'Buzz'
	end
	return unchanged
end

def first_last_six?(list)
	if list[0] == 6
		return true
	end
	if list[list.length-1] == 6
		return true
	end
	return false
end

def rotate_left(trio)
	temp = trio[0]
	length = trio.length
	trio.each_with_index do |number, i|
		if i != length - 1
			trio[i] = trio[i+1]
		end
	end
	trio[length-1] = temp
	return trio
end

def double23?(list)
	twos = 0
	threes = 0
	list.each do |number|
		if number == 2
			twos += 1
		end
		if number == 3
			threes += 1
		end
	end
	if twos == 2 || threes == 2
		return true
	end
	return false
end
