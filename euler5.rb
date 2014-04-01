# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# This is too slow http://stackoverflow.com/questions/8024911/project-euler-5-in-python-how-can-i-optimize-my-solution

@range=20
@check_list = [20,19,18,17,16,15,14,13,12,11]
def find_divisors(number)
	if number.odd?
		return false
	end
	# 1 and 2 will always divide 
	@check_list.each do |n|
		if number % n !=0
			return false
		end
	end
	puts "#{number} has no remainders! "
	return true
end


(10000000..1000000000).each do |n|
	find_divisors(n)
end