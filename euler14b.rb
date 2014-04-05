# http://recurial.com/programming/sequences-of-numbers-in-ruby-collatz-problem/

$h = Hash.new

def calc_seq(n,s)
  if $h[n]
    return $h[n] + s - 1
 elsif n == 1
    return s
 elsif n & 1 == 0
    return calc_seq(n/2,s+1)
  else
    return calc_seq(3*n+1,s+1)
  end
end

def calc_seq_cache(n)
  $h[n] = calc_seq(n,1)
end

(1..1000000).each do |i|
  calc_seq_cache i
end
puts $h.invert[$h.values.max]