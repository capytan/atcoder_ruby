a, b, w = gets.split.map(&:to_i)
# p a
# p b
# p w
max = 2000 / a
min = 2000 / b
answer = []

p "max: #{max}"
p "min: #{min}"

for num in min..max do
  p num
  rest = (w * 1000) - num * b
  if rest < 0
  elsif rest == 0
    answer.push(num)
  elsif rest % a == 0
    count = num + (rest / a)
    answer.push(count)
  else
    
  end

  rest = (w * 1000) - num * a
  if rest == 0
    answer.push(num)
  elsif rest % b == 0
    count = num + (rest / b)
    answer.push(count)
  end
end

answer.delete(0)
p answer
# p "#{answer.min} #{answer.max}"