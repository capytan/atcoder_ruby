# WA

h, w, k = gets.split.map(&:to_i)
array = readlines.map(&:split).map(&:join)
answer = 0

h_combi = [[0]]
h.each do |i|
  h_combi += (*1..h).combination(i).to_i
end
w_combi = [[0]]
w.each do |i|
  w_combi += (*1..h).combination(i).to_i
end

def countup(array)
  c = 0
  array.each do |a|
    c += a.count('#')
  end
  c
end

for height in 0..h
  for width in 0..w
    tmp = Marshal.load(Marshal.dump(array))
    if width != 0
      tmp.each do |a|
        a.slice!(width - 1)
      end
    end

    if height != 0
      tmp.delete_at(height - 1)
    end

    answer += 1 if countup(tmp) == k
  end
end

puts answer

