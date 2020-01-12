n, k, m = gets.split.map(&:to_i)
scores = gets.split.map(&:to_i)

target_score = n * m

current_total = 0
scores.each { |i| current_total += i }

needed_score = target_score - current_total

if needed_score > k
  puts "-1"
elsif needed_score <= 0
  puts "0"
else
  puts needed_score
end