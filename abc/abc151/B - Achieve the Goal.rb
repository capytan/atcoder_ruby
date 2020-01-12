n, k, m = gets.split.map(&:to_i)
scores = gets.split.map(&:to_i)
target_point = n * m

# n科目、k点満点、目標m点
# scoresが各試験の点数
# n * m が必須合計点

current_total = 0
scores.each { |i| current_total += i }

needed_score = target_score - current_total

p n
p k
p m
p scores
p target_score
p current_total
p needed_score

if needed_score > k
  puts "-1"
elsif needed_score <= 0
  puts "0"
else
  puts needed_score
end


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