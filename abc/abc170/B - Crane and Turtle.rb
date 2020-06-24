# frozen_string_literal: true

x, y = gets.split.map(&:to_i)
(x + 1).times do |i|
  combi = 2 * (x - i) + 4 * i
  if combi == y
    puts 'Yes'
    break
  end
  puts 'No' if i == x
end
