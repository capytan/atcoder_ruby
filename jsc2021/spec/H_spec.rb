# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 2\n3 3\n1 7\n2 5\n1 2\n4 3\n2 1\n"' do
    io = IO.popen('ruby jsc2021/H.rb', 'w+')
    io.puts("4 2\n3 3\n1 7\n2 5\n1 2\n4 3\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "5 2\n2 2\n5 5\n5 7\n2 4\n3 10\n3 5\n4 1\n"' do
    io = IO.popen('ruby jsc2021/H.rb', 'w+')
    io.puts("5 2\n2 2\n5 5\n5 7\n2 4\n3 10\n3 5\n4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "11 4\n8 1\n9 9\n8 10\n8 3\n1 2\n11 3\n9 2\n6 5\n3 4\n1 7\n3 2\n7 8\n10 1\n4 9\n11 6\n"' do
    io = IO.popen('ruby jsc2021/H.rb', 'w+')
    io.puts("11 4\n8 1\n9 9\n8 10\n8 3\n1 2\n11 3\n9 2\n6 5\n3 4\n1 7\n3 2\n7 8\n10 1\n4 9\n11 6\n")
    io.close_write
    expect(io.readlines.join).to eq("26\n")
  end
end
