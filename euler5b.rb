answer = 0
number = 20

while answer <= 0 do
  if number % 20 == 0 && number % 19 == 0 && number % 18 == 0 && number % 17 == 0 && number % 16 == 0 && number % 15 == 0 && number % 14 == 0 && number % 13 == 0  && number % 12 == 0 && number % 11  == 0 && number % 10 == 0
    answer = number
  end
  number = number + 1
end

puts answer
