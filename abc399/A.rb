# frozen_string_literal: true

n = gets.to_i
s = gets.chomp
t = gets.chomp

distance = 0
n.times do |i|
  distance += 1 if s[i] != t[i]
end

puts distance
