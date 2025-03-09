# frozen_string_literal: true

n = gets.to_i
a = readlines.map(&:to_i)
b = Array.new(n, 0)

a.each do |i|
  t = i - 1
  b[t] += 1
end

before = b.index(0)
after = b.index(2)

if before
  puts "#{after + 1} #{before + 1}"
else
  puts 'Correct'
end
