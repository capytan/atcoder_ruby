a, b, c, x = gets.split.map(&:to_i)

if x <= a
  puts 1
elsif x > b
  puts 0
else
  puts c.to_f / (b - a)
end