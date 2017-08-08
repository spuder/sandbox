# https://projecteuler.net/problem=9

1.upto(1000) do |a|
  a.upto(1000) do |b|
    b.upto(1000) do |c|
      legs = a*a + b*b
      hypotenuse = c*c
      if legs == hypotenuse
        if a + b + c == 1000
          puts "#{a} * #{b} * #{c}"
          puts a * b * c
        end
      end
    end
  end
end
