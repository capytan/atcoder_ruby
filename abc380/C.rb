# frozen_string_literal: true

_n, k = gets.split.map(&:to_i)
s = gets.chomp

blocks = s.scan(/1+|0+/)
one_blocks = blocks.select { |block| block.include?('1') }

one_blocks[k - 2] += one_blocks[k - 1]
one_blocks[k - 1] = ''

new_blocks = []
one_index = 0

blocks.each do |block|
  if block.include?('1')
    new_blocks << one_blocks[one_index]
    one_index += 1
  else
    new_blocks << block
  end
end

puts new_blocks.join
