_n = gets.to_i
results = readlines.map(&:chomp)
ac = 0
wa = 0
tle = 0
re = 0

results.each do |r|
  if r == 'ac'
    ac += 1
  elsif r == 'wa'
    wa += 1
  elsif r == 'tle'
    wa += 1
  elsif r == 're'
    wa += 1
  end
end

puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"
