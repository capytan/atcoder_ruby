n = gets.to_i

if n < 1000
  puts 0
elsif n >= 1_000 && n < 1_000_000
  answer = n - 999
elsif n >= 1_000_000 && n < 1_000_000_000
  answer = n * 2 - (999 * 2) - 999_000
elsif n >= 1_000_000_000 && n < 1_000_000_000_000
  answer = n * 3 - (999 * 3) - (999_000 * 2) - 999_000_000
elsif n >= 1_000_000_000_000 && n < 1_000_000_000_000_000
  answer = n * 4 - (999 * 4) - (999_000 * 3) - (999_000_000) * 2 -  999_000_000_000
elsif n == 1_000_000_000_000_000
  answer = 999_999_999_999_999 * 4 - (999 * 4) - (999_000 * 3) - (999_000_000 * 2) - 999_000_000_000 + 5
end

puts answer