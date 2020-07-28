# frozen_string_literal: true

require 'stringio'

## 標準入力
x = <<~EOS
EOS
$stdin = StringIO.new(x)

# ====== 実際の処理 =====


# =====================

# 標準入力を元に戻す
$stdin = STDIN
