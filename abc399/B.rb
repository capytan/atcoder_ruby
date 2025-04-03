# frozen_string_literal: true

n = gets.to_i
p = gets.split.map(&:to_i)

scores = p.map.with_index(1) { |score, i| [score, i] }
scores.sort_by! { |score, _| -score }

ranks = Array.new(n)
current_rank = 1

i = 0

while i < n
  current_score = scores[i][0]
  count = scores.count { |score, _| score == current_score }

  count.times do |j|
    original_index = scores[i + j][1] - 1
    ranks[original_index] = current_rank
  end

  current_rank += count
  i += count
end

puts ranks
