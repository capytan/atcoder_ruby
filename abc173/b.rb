# frozen_string_literal: true

_n = gets.to_i
results = readlines.map(&:chomp)
ac = 0
wa = 0
tle = 0
re = 0

results.each do |r|
  case r
  when 'ac'
    ac += 1
  when 'wa'
    wa += 1
  when 'tle'
    wa += 1
  when 're'
    wa += 1
  end
end

puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"
