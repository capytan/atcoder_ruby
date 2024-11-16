# frozen_string_literal: true

a = gets.chomp.to_s.chars.map(&:to_i)

if a.count(1) == 1 && a.count(2) == 2 && a.count(3) == 3
  puts 'Yes'
else
  puts 'No'
end
