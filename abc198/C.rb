require 'complex'
require 'bigdecimal'

r, x, y = gets.split.map(&:to_i)
euclidean_distance = BigDecimal((x ** 2 + y ** 2).to_s).sqrt(100)
ans = euclidean_distance / r.to_d

if ans == ans.to_i
  puts ans.to_i
else
  puts ans.ceil
end
