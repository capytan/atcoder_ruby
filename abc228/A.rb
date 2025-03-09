# frozen_string_literal: true

s, t, x = gets.split.map(&:to_i)

if s.zero? && x < t
  puts 'Yes'
elsif t.zero? && s <= x
  puts 'Yes'
elsif s < t && s <= x && t > x
  puts 'Yes'
elsif s > t && (x < t || s <= x)
  puts 'Yes'
else
  puts 'No'
end
