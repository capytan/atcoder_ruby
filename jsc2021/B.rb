# frozen_string_literal: true

gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
puts ((a - b) + (b - a)).sort.join(' ')
