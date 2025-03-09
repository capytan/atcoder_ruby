# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
(0..n - 3).each do |i|
  if a[i] == a[i + 1] && a[i + 1] == a[i + 2]
    puts 'Yes'
    exit
  end
end
puts 'No'
