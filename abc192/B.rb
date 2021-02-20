s = gets.chomp
odd = []
even = []
s.each_char.with_index do |c, index|
  odd << c if index % 2 == 0
end
s.each_char.with_index do |c, index|
  even << c if index % 2 != 0
end
if s.length == 1 && s == s.downcase
  puts 'Yes'
elsif odd.join == odd.join.downcase && even.join == even.join.upcase
  puts 'Yes'
else
  puts 'No'
end