# frozen_string_literal: true

a = gets.to_s.chomp
if [*'A'..'Z'].include? a
  puts 'A'
else
  puts 'a'
end
