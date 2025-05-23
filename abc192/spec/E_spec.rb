# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 2 1 3\n1 2 2 3\n2 3 3 4\n"' do
    io = IO.popen('ruby abc192/E.rb', 'w+')
    io.puts("3 2 1 3\n1 2 2 3\n2 3 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "3 2 3 1\n1 2 2 3\n2 3 3 4\n"' do
    io = IO.popen('ruby abc192/E.rb', 'w+')
    io.puts("3 2 3 1\n1 2 2 3\n2 3 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "3 0 3 1\n"' do
    io = IO.popen('ruby abc192/E.rb', 'w+')
    io.puts("3 0 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "9 14 6 7\n3 1 4 1\n5 9 2 6\n5 3 5 8\n9 7 9 3\n2 3 8 4\n6 2 6 4\n3 8 3 2\n7 9 5 2\n8 4 1 9\n7 1 6 9\n3 9 9 3\n7 5 1 5\n8 2 9 7\n4 9 4 4\n"' do
    io = IO.popen('ruby abc192/E.rb', 'w+')
    io.puts("9 14 6 7\n3 1 4 1\n5 9 2 6\n5 3 5 8\n9 7 9 3\n2 3 8 4\n6 2 6 4\n3 8 3 2\n7 9 5 2\n8 4 1 9\n7 1 6 9\n3 9 9 3\n7 5 1 5\n8 2 9 7\n4 9 4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("26\n")
  end
end
