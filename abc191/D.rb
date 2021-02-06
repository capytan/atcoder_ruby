x, y, r = gets.split.map(&:to_f)
sum = 0
start = (x - r).ceil
finish = (x + r).floor

for i in start..finish do
  p = Math.sqrt(r ** 2 - (x - i.to_f) ** 2)
  top = (y + p).floor
  bottom = (y - p).ceil
  if (top - bottom).abs == 0
    sum += 1
  else
    sum += (top - bottom).abs + 1
  end
end

puts sum
