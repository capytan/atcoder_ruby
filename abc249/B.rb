s = gets.chomp

if s == s.upcase
  puts 'No'
  exit
end

if s == s.downcase
  puts 'No'
  exit
end

if s.length == s.split("").uniq.length
  puts 'Yes'
else
  puts 'No'
end