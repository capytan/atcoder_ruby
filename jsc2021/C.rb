# frozen_string_literal: true

a, b = gets.split.map(&:to_i)
diff = b - a
bb = b
i = diff

answer = 1

while bb > a
  while i > 1
    next if bb % i != 0

    if bb - i >= a
      puts i
      exit
    end
    i -= 1
  end
  bb -= 1
end

puts answer
