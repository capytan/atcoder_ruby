# frozen_string_literal: true

a = gets.chomp.chars
bar_total_count = a.count('|')
count = Array.new((bar_total_count - 1), 0)
bar_count = -1

a.each do |x|
  if x == '|'
    bar_count += 1
  else
    count[bar_count] += 1
  end
end

puts count.join(' ')