# frozen_string_literal: true

int = gets.to_s
int_size = int.length

half_size = if int_size.even?
              (int.length / 2)
            else
              (int.length - 1) / 2
            end

front = int[0, half_size]

back = if int_size.even?
         int[half_size, int_size - 1].reverse
       else
         int[half_size + 1, int_size - 1].reverse
       end

counts = 0

half_size.times do |n|
  counts += 1 if front[n - 1] != back[n - 1]
end

p counts
