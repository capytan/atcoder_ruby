# frozen_string_literal: true

require 'stringio'

## 標準入力
x = <<~EOS
  5
  1 2 3 4 5
EOS
$stdin = StringIO.new(x)

N = gets.to_i
array = gets.split.map(&:to_i).sort.reverse
alice = 0
bob = 0

array.each_with_index do |n, i|
  if i.even?
    alice += n
  else
    bob += n
  end
end

puts alice - bob

# 標準入力を元に戻す
$stdin = STDIN
