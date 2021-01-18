a, b = gets.split.map(&:chomp)

def sum_of_digits(n)
  n.split("").map { |s| s.to_i }.sum
  # n.split("").map { |s| s.to_i }.inject(:+)
end

aa = sum_of_digits(a)
bb = sum_of_digits(b)

if aa > bb
  puts aa
else
  puts bb
end

# 別解: maxメソッドで判定する
# puts [aa, bb].max
#
# 別解: 三項演算子を使う
# puts aa >= bb ? aa : bb