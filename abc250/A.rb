h, w = gets.split.map(&:to_i)
r, c = gets.split.map(&:to_i)

count = 0

count += 1 if c != 1
count += 1 if c != w
count += 1 if r != 1
count += 1 if r != h

puts count