# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "0001\n101\n"' do
    io = IO.popen('ruby abc196/F.rb', 'w+')
    io.puts("0001\n101\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "0101010\n1010101\n"' do
    io = IO.popen('ruby abc196/F.rb', 'w+')
    io.puts("0101010\n1010101\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "10101000010011011110\n0010011111\n"' do
    io = IO.popen('ruby abc196/F.rb', 'w+')
    io.puts("10101000010011011110\n0010011111\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end
end
