# frozen_string_literal: true

require 'stringio'

## 標準入力
x = <<~EOS
  4
  10
  8
  8
  6
EOS
$stdin = StringIO.new(x)

# ====== 実際の処理 =====

N = gets.to_i
array = readlines.map(&:to_i).uniq
puts array.count

# =====================

# 標準入力を元に戻す
$stdin = STDIN
