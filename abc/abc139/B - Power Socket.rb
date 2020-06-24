x, y = gets.split.map(&:to_i)
count = 0
i = 1
while i < y
  i += x - 1
  count += 1
end
