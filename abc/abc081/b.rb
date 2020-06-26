n = gets.chomp.to_i
s = gets.split.map(&:to_i)
count = 0

loop do
  if s.all? { |i| i.even? }
    count += 1
    s.map! { |i| i / 2 }
  else
    puts count
    break
  end
end

