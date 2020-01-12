# 誤答
n, m = gets.split.map(&:to_i)
submittions = readlines.map(&:chomp).map(&:split)
ac_count = 0
wa_count = 0

n.times do |no|
  ac_flag = false

  m.times do |i|

    break if ac_flag == true

    if submittions[i][0].to_i == no + 1
      if submittions[i][1] == "WA"
        wa_count += 1
      else
        ac_count += 1
        ac_flag = true
      end
    end
  end
end

puts "#{ac_count} #{wa_count}"