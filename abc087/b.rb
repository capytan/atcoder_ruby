# frozen_string_literal: true

a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
count = 0

(0..a).each do |l|
  (0..b).each do |m|
    (0..c).each do |n|
      count += 1 if 500 * l + 100 * m + 50 * n == x
    end
  end
end

puts count
