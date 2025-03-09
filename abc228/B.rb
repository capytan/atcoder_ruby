# frozen_string_literal: true

_, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

known = Array.new(x.size, false)

i = x
known[i - 1] = true
count = 1

loop do
  i = a[i - 1]
  break if known[i - 1]

  known[i - 1] = true
  count += 1
end

puts count
