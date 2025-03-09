# frozen_string_literal: true

n, k = gets.split.map(&:to_i)

def g1(int)
  int.to_s.split(//).sort.reverse.join.to_i
end

def g2(int)
  int.to_s.split(//).sort.join.to_i
end

def f(int)
  g1(int) - g2(int)
end

before_value = n
k.times do |_i|
  before_value = f(before_value)
end

p before_value
