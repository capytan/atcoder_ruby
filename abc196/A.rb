# frozen_string_literal: true

ab = gets.split.map(&:to_i)
cd = gets.split.map(&:to_i)
puts ab.max - cd.min
