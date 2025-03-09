# frozen_string_literal: true

n, a, b = gets.chomp.split.map(&:to_i)
sum = 0

n.times do |i|
  num = (i + 1).to_s.split(//).map(&:to_i)
  s = num.map(&:to_i).sum
  sum += i + 1 if s >= a && s <= b
end

puts sum
