# frozen_string_literal: true

x, m = readlines.map(&:chomp!)
d = x.split(//).sort.reverse.first.to_i

count = 0
d += 1
tmp = x.to_i(d)

if m.to_i < tmp
  puts 0
else
  until m.to_i < tmp
    count += 1
    d += 1
    tmp = x.to_i(d)
  end
  puts count
end
