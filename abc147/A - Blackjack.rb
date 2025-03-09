# frozen_string_literal: true

nums = gets.split.map(&:to_i)

if nums.inject(:+) >= 22
  puts 'bust'
else
  puts 'win'
end
