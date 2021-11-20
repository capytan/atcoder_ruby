x, y, z = gets.split.map(&:to_i)
xyz = y.to_f / x * z

if xyz == xyz.to_i
  puts xyz.to_i - 1
else
  puts xyz.to_i
end