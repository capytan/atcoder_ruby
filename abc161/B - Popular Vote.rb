n, m = gets.split.map(&:to_i)
goods = gets.split.map(&:to_i)
votes = goods.inject(:+)
popular_goods = []

def judge(target, sum, m)
  if target >= sum.to_f / (4 * m)
    1
  else
    0
  end
end

goods.each do |good|
  popular_goods.push(judge(good, votes, m))
end

if popular_goods.inject(:+) >= m
  puts "Yes"
else
  puts "No"
end
