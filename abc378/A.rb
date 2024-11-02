# frozen_string_literal: true

balls = gets.split.map(&:to_i)
count = Array.new(balls.size + 1, 0)

balls.each do |ball|
  count[ball] += 1
end

ops_count = 0

(1..balls.size).each do |i|
  if count[i] == 4
    ops_count += 2
  elsif count[i] >= 2
    ops_count += 1
  end
end

puts ops_count
