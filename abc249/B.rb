s = gets.chomp

if s != s.upcase
  if s != s.downcase
    if s.length == s.split("").uniq.length
      puts 'Yes'
    else
      puts 'No'
    end
  else
    puts 'No'
  end
else
  puts 'No'
end