_n = gets.to_i
as = gets.split.map(&:to_i)

if as.include?(0)
  puts '0'
  exit
end

MAX = 10 ** 18

result = 1
as.each do |i|
  result *= i
  if result > MAX
    puts '-1'
    exit
  end
end

puts result
