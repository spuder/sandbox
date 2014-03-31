#http://projecteuler.net/problem=1
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

@list_of_numbers=[]
@values_below=1000

def multiple_of_three(anumber)
	if (anumber % 3 == 0 )
		return true
	else
		return false
	end
end

def multiple_of_five(anumber)
	if (anumber % 5 == 0)
		return true
	else
		return false
	end
end



(0..@values_below-1).each do |n|
	#puts "Testing #{n}"
	if (multiple_of_three(n) == true ) or ( multiple_of_five(n) == true )
		puts "adding #{n} to array"
		@list_of_numbers.push(n)
	end
end

@answer=0
@list_of_numbers.each do |n|
	@answer = @answer +n
end
puts "#{@answer}"