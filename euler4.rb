largest = 0
# puts (4 * 5).to_s.reverse

999.downto(100) do |x|
  999.downto(100) do |y|
    result = (x * y).to_s
    if result == result.reverse 
      if result.to_i > largest
        largest = result.to_i
      end
    end
  end
end

puts largest
