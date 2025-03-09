# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n1 4 2 5\n"' do
    io = IO.popen('ruby abc188/C.rb', 'w+')
    io.puts("2\n1 4 2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "2\n3 1 5 4\n"' do
    io = IO.popen('ruby abc188/C.rb', 'w+')
    io.puts("2\n3 1 5 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "4\n6 13 12 5 3 7 10 11 16 9 8 15 2 1 14 4\n"' do
    io = IO.popen('ruby abc188/C.rb', 'w+')
    io.puts("4\n6 13 12 5 3 7 10 11 16 9 8 15 2 1 14 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end
end
