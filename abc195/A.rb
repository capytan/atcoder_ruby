# frozen_string_literal: true

m, h = gets.split.map(&:to_i)

if (h % m).zero?
  puts 'Yes'
else
  puts 'No'
end
