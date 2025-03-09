# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
surplus = n % k
surplus_abs = (surplus - k).abs

if surplus_abs > n
  puts n
elsif surplus.zero?
  puts '0'
elsif surplus_abs < k
  puts surplus_abs
else
  puts (surplus_abs - k).abs
end
