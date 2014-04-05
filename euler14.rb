# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

@chain = []
@longest_number=0
@longest_chain=[0]



def even_collatz(number)
	return number / 2
end

def odd_collatz(number)
	return 3 * number + 1
end

debug = false

@itterator=0

# Check each number up to 100000
(837799..1000000).each do |n|
	# Check if first itteration
	if @chain.empty?
		@chain.push(n)
		@itterator = n
	end
	# Check if we have found a solution to the chain
	while @chain.last > 1 
			# Save new number to array
		if @itterator.even?
			if debug
				puts " Checking even number #{@itterator}"
			end
			@itterator = even_collatz(@itterator)
			@chain.push(@itterator)
		else
			if debug
				puts " Checking odd number #{@itterator}"
			end
			@itterator = odd_collatz(@itterator)
			@chain.push(@itterator)
		end
	end
	if debug
		puts "Found an answer #{n}"
		puts "#{@chain}"
	end

	# Store longest chain
	if @chain.length > @longest_chain.length
		if debug
			puts "Saving new record holder: #{n} which beats previous length of #{@longest_chain.length} with #{@chain.length}"
		end
		@longest_chain = @chain.clone
		@longest_number = n
	end

	if debug
		puts "Resetting itterator to 0"
	end
	@itterator=0
	@chain.clear
end

# (10..14).each do |n|
# 	if @chain.last > 2
# 		puts "Found the end of a chain"
# 		puts "#{@chain}"
# 		break
# 	end
# end

puts "====================================================================="
puts "Winner is #{@longest_number} with length of #{@longest_chain.length} "
puts "#{@longest_chain}"
