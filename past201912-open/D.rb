# TLE: 2207 ms, 27660 KB
n = gets.to_i
a = readlines.map(&:to_i)
b = []

1.upto n do |i|
  b << a.count(i)
end

if b.all?(1)
  puts 'Correct'
else
  puts "#{(b.index(2) + 1)} #{(b.index(0) + 1)}"
end