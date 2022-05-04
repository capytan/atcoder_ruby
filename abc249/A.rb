a, b, c, d, e, f, x = gets.split.map(&:to_i)

takahashi = 0
aoki = 0
i = 0

# memo: 繰り返しではWhileを使う
# Rubyの繰り返し処理においてforやtimesは遅い
# https://kona0001.hatenablog.com/entry/2021/06/07/170343
while i < x
  takahashi += b if i % (a + c) < a
  aoki += e if i % (d + f) < d
  i += 1
end

if takahashi > aoki
  puts 'Takahashi'
elsif takahashi < aoki
  puts 'Aoki'
elsif takahashi == aoki
  puts 'Draw'
end