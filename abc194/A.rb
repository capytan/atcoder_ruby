# frozen_string_literal: true

a, b = gets.split.map(&:to_i)

if a + b >= 15 && b >= 8
  puts 1
elsif a + b >= 10 && b >= 3
  puts 2
elsif a + b >= 3
  puts 3
else
  puts 4
end
