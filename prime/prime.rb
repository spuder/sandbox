def is_divisible(number)
	(1..number-1).step(2) do |n|
		if (number % n) == 0
			puts "#{number} is divisible by  #{n}"
			return false
		end
	end
	return true
end

number_to_check=37

if is_divisible(number_to_check) == true
	puts "#{number_to_check} is prime"
else
	puts "#{number_to_check} is not prime"
end





