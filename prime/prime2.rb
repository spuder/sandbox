
def is_divisible(anumber)
	if anumber == 1 || anumber == 2
		puts "1 and 2 are exceptions to the formula, they are prime"
		return true
	end
	#This has a problem because it thinks 14 is prime, and doesn't check for 2's
	(3..Math.sqrt(anumber)).step(2) do |n|
		if anumber % n == 0
			puts " #{anumber} is divisible by #{n}"
			return false
		end
	end
	puts " Checked all numbers up to #{Math.sqrt(anumber)}, #{anumber} must be prime"
	return true
end

# if is_divisible(anumber) != true
# 	puts "#{anumber} is not prime"
# else
# 	puts "#{anumber} is prime"
# end


puts is_divisible(1)
puts is_divisible(2)
puts is_divisible(14)
puts is_divisible(31)
puts is_divisible(37)
puts is_divisible(42)
puts is_divisible(99)

