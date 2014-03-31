# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'prime'


value=2000000
@list_of_primes=[]

value.downto(2).each do |n|
	if n.prime?
		@list_of_primes.push(n)
	end
end

puts "Primes are #{@list_of_primes}"

#puts "Shortcut to total #{@list_of_primes.inject(:+)"
puts "Total are #{@list_of_primes.inject(0) {|result, element| result + element}}"