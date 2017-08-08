sum_of_squares = 0
squares_of_sums = 0 
1.upto(100) do |x|
  sum_of_squares = sum_of_squares + x*x
  squares_of_sums += x
end

puts (squares_of_sums * squares_of_sums) - sum_of_squares
