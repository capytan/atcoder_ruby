# frozen_string_literal: true

_n = gets.to_i
ab = readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
a = []
b = []
ab.each do |i|
  a.push(i[0])
  b.push(i[1])
end
answer = []
a.each_with_index do |h, j|
  b.each_with_index do |k, l|
    if j == l
      answer.push(h + k)
    else
      answer.push([h, k].max)
    end
  end
end
puts answer.min
