# frozen_string_literal: true

n, a, b = gets.split.map(&:to_i)

tiles = []
w = 0

while w < n
  s = ''
  h = 0
  while h < n
    s += if (w + h).odd?
           '#' * b
         else
           '.' * b
         end
    h += 1
  end
  j = 0
  while j < a
    tiles << s
    j += 1
  end
  w += 1
end

puts tiles
