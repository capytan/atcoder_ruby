s, t, x = gets.split.map(&:to_i)

if s == 0 && x < t
  puts 'Yes'
elsif t == 0 && s <= x
  puts 'Yes'
elsif s < t && s <= x && t > x
  puts 'Yes'
elsif s > t && (x < t || s <= x)
  puts 'Yes'
else
  puts 'No'
end
