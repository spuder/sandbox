sum = 0
current_term = 1
previous_term = 0
while current_term < 4000000 do
  if current_term + previous_term < 4000000
    temp_term = current_term
    current_term = current_term + previous_term
    previous_term = temp_term
    puts current_term
    if current_term % 2 == 0
      sum = sum + current_term
    end
  else
    break
  end
end

puts "==============="
puts sum
puts "==============="
