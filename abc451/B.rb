# frozen_string_literal: true

employee_count, department_count = gets.split.map(&:to_i)
diff = Array.new(department_count, 0)

employee_count.times do
  current, next_dept = gets.split.map(&:to_i)
  diff[current - 1] -= 1
  diff[next_dept - 1] += 1
end

puts diff.join("\n")
