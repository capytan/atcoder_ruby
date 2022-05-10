n, a, b = gets.split.map(&:to_i)

tiles = []
w = 0

while w < n do
  s = ""
  h = 0
  while h < n do
    if (w + h).odd?
      s += "#" * b
    else
      s += "." * b
    end
    h += 1
  end
  j = 0
  while j < a do
    tiles << s
    j += 1
  end
  w += 1
end

puts tiles