# frozen_string_literal: true

_n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0

a.each_with_index do |h, j|
  sliced = a.slice(0..j)
  sliced.each do |s|
    ans += (s - h)**2
  end
end

puts ans
