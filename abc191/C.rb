h, w = gets.split.map(&:to_i)
s = readlines.map(&:chomp!)
p s

s.each do |i|
  puts i
  puts s.each_index.select{|i| s[i] == "#" }
end

count = 4

