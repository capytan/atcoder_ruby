n, a, b =  readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
sum = 0

n.first.times do |i|
  sum += a[i] * b[i]
end

if sum == 0
  puts 'Yes'
else
  puts 'No'
end