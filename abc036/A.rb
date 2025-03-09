# frozen_string_literal: true

a, b = gets.split.map(&:to_i)
ans = b / a
ans += 1 if b % a != 0
puts ans
