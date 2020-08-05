a, b = gets.split.map(&:to_i)
ans = b / a
if b % a != 0
  puts ans += 1
else
  puts ans
end
