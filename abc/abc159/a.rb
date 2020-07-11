a, b = gets.chomp.split.map(&:to_i)

class Integer
  def combination(k)
    (self - k + 1..self).inject(:*) / k.factorial
  end

  def factorial
    (1..self).inject(:*)
  end
end

puts a.combination(2) + b.combination(2)
