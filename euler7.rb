#http://projecteuler.net/problem=7
#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#What is the 10 001st prime number?


#ways to solve

# 1. Keep finding prime numbers, until we have 10001 numbers in an array
# 2. Recursion, but recursion is evil



#Solution 1, add numbers to array

prime_to_find = 10001
@array_of_primes = []
@debug = false

# array_of_primes.push('fooy')
# puts array_of_primes[0]

def is_prime(anumber)
	if anumber == 1
		puts "1 is not prime"
		return false
	end
	if (anumber == 2) 
		puts "2 is prime"
		@array_of_primes.push(anumber)
		puts "Array is now #{@array_of_primes.length}"
		return true
	end
	#Save ourselves some calcuations
	if anumber.even? and anumber != 2
		if @debug 
			puts "#{anumber} is even, can't be prime"
		end
		return false
	end
	(3..Math.sqrt(anumber)).step(2) do |n|
		if anumber % n == 0 and anumber != n
			if @debug 
				puts "#{anumber} is not prime because #{anumber} / #{n} is 0 and #{anumber} is not #{n}"
			end
			return false
		end
	end
	if @debug 
		puts "#{anumber} must be prime, adding to array"
	end
	@array_of_primes.push(anumber)
	if @debug 
		puts "Array is now #{@array_of_primes.length}"
	end
end

$start_at = 0
while prime_to_find > (@array_of_primes.length)
	is_prime($start_at)
	$start_at = $start_at+1
end

#puts @array_of_primes
puts "The #{prime_to_find}'th prime number is #{@array_of_primes.at(prime_to_find -1)}"