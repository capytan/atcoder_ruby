int = gets.to_s
int_size = int.length

if int_size.even?
  half_size = (int.length / 2)
else
  half_size = (int.length - 1) / 2
end

front = int[0, half_size]

if int_size.even?
  back = int[half_size, int_size - 1].reverse
else
  back = int[half_size + 1, int_size - 1].reverse
end

counts = 0

half_size.times do |n|
  if front[n - 1] != back[n - 1]
    counts += 1
  end
end

p counts
