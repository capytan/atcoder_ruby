n, a = readlines.map(&:chomp).map { |e| e.split.map(&:to_i) }
n = n.first
num = 2**n

max1 = a[0..(num/2-1)].max
max2 = a[(num/2)..].max

second =  [max1, max2].min
puts a.index(second) + 1
