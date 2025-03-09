# frozen_string_literal: true

a, b, c = gets.split.map(&:to_i)

1000.times do |i|
  unless a.even? && b.even? && c.even?
    puts i
    exit
  end

  a2 = (b + c) / 2
  b2 = (c + a) / 2
  c2 = (a + b) / 2
  a = a2
  b = b2
  c = c2
end

puts(-1)
