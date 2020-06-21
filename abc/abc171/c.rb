offset = 'a'.ord
base = 26
value = gets.to_i
result = []
while value > 0
  value -= 1
  result << (value%base+offset).chr
  value /= base
end
puts result.reverse.join