a, b, c, d, e, f, x = gets.split.map(&:to_i)

takahashi = 0
aoki = 0
i = 0

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