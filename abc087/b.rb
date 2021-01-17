a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
count = 0

for l in 0..a do
  for m in 0..b do
    for n in 0..c do
      if 500 * l + 100 * m + 50 * n == x
        count += 1
      end
    end
  end
end

puts count
