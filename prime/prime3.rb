#Sive of Erathosthenes
#https://gist.github.com/mexpolk/1722053

numbers = 2..10000
o = []
p = []

for i in numbers
	next if o.include? i
	ii = i * 2
	while ii <= numbers.last do
		o << ii
		ii = ii + i
	end
	p << i unless o.include?(i)
end

puts p.inspect


puts p.include?(47)