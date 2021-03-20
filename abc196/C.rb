n = gets.to_i
length = n.to_s.length
unless length == 1
  n = ('9' * (length - 1)).to_i if length.odd?
  split = n.to_s.scan(/.{1,#{length / 2}}/)
end

if length == 1
  puts 0
elsif split[0].to_i <= split[1].to_i
  puts split[0].to_i
else
  puts split[0].to_i - 1
end
