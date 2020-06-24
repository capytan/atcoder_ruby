# frozen_string_literal: true

before_sum = [*1..5].sum
after_sum = gets.split.map(&:to_i).sum
puts before_sum - after_sum
