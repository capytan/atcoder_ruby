n = gets.chomp
n.sub!(/0+$/, '')
if n == n.reverse
  puts 'Yes'
else
  puts 'No'
end