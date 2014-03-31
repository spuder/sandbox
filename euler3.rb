# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

require 'prime'

# Find factors of number and add to array
target=600851475143

@factors = []
@prime_factors = []

#puts "going to check #{target} for primes"
#puts "the square root of #{target} is #{Math.sqrt(target)}"

Math.sqrt(target).to_i.downto(1) do |n|
	#puts "checking #{n}"
	if target % n == 0
		#puts "looks like #{n} is a factor of #{target}"
		@factors.push(n)
	end
end

#puts "I found the following factors #{@factors}"


@factors.each do |n|
	if n.prime?
		#puts "#{n} is prime"
		@prime_factors.push(n)
	end
end

puts "The prime factors are: #{@prime_factors}"

puts "The largest prime is #{@prime_factors.max}"

# Check each number in array to see if prime