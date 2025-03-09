# frozen_string_literal: true

x, y, r = gets.split.map(&:to_f)
sum = 0
start = (x - r).ceil
finish = (x + r).floor

(start..finish).each do |i|
  p = Math.sqrt(r**2 - (x - i.to_f)**2)
  top = (y + p).floor
  bottom = (y - p).ceil
  sum += if (top - bottom).abs.zero?
           1
         else
           (top - bottom).abs + 1
         end
end

puts sum
