x, y, z = gets.split.map(&:chomp)
x, y = y, x
x, z = z, x
puts x + ' ' + y + ' ' + z
