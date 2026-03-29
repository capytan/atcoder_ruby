# frozen_string_literal: true

# Min-Heap for priority queue operations
class PriorityQueue
  def initialize
    @data = []
  end

  def push(value)
    @data << value
    index = @data.size - 1
    while index.positive?
      parent = (index - 1) / 2
      break if @data[parent] <= @data[index]

      @data[parent], @data[index] = @data[index], @data[parent]
      index = parent
    end
  end

  def top
    @data[0]
  end

  def pop
    last = @data.pop
    return last if @data.empty?

    removed = @data[0]
    @data[0] = last
    sift_down
    removed
  end

  def size
    @data.size
  end

  def empty?
    @data.empty?
  end

  private

  def sift_down
    index = 0
    loop do
      child = min_child(index)
      break if child.nil? || @data[index] <= @data[child]

      @data[index], @data[child] = @data[child], @data[index]
      index = child
    end
  end

  def min_child(index)
    left = (index * 2) + 1
    return nil if left >= @data.size

    right = left + 1
    right < @data.size && @data[right] < @data[left] ? right : left
  end
end

query_count = gets.to_i
heap = PriorityQueue.new
output = +''

query_count.times do
  type, height = gets.split.map(&:to_i)
  if type == 1
    heap.push(height)
  else
    heap.pop while !heap.empty? && heap.top <= height
  end
  output << heap.size.to_s << "\n"
end
puts output
