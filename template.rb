# frozen_string_literal: true

n = gets.to_i
s = gets.chomp
a = gets.split.map(&:to_i)
a = Array.new(n) { gets.to_i }
m = Array.new(n) { gets.split.map(&:to_i) }
