# frozen_string_literal: true

gets.split.map(&:to_i)
s = readlines.map(&:chomp!)
p s

s.each do |i|
  puts i
  puts(s.each_index.select { |i| s[i] == '#' })
end

4
