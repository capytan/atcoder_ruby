# frozen_string_literal: true

_, b = gets.split.map(&:to_i)
prices = gets.split.map(&:to_i).sort
sum = 0
b.times do |i|
  sum += prices[i]
end
puts sum
