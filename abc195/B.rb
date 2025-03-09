# frozen_string_literal: true

a, b, w = gets.split.map(&:to_i)
# p a
# p b
# p w
max = 2000 / a
min = 2000 / b
answer = []

p "max: #{max}"
p "min: #{min}"

(min..max).each do |num|
  p num
  rest = (w * 1000) - num * b
  if rest.negative?
  elsif rest.zero?
    answer.push(num)
  elsif (rest % a).zero?
    count = num + (rest / a)
    answer.push(count)
  end

  rest = (w * 1000) - num * a
  if rest.zero?
    answer.push(num)
  elsif (rest % b).zero?
    count = num + (rest / b)
    answer.push(count)
  end
end

answer.delete(0)
p answer
# p "#{answer.min} #{answer.max}"
