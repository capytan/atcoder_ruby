# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "314 2\n"' do
    io = IO.popen('ruby abc192/C.rb', 'w+')
    io.puts("314 2\n")
    io.close_write
    expect(io.readlines.join).to eq("693\n")
  end

  it 'test with "1000000000 100\n"' do
    io = IO.popen('ruby abc192/C.rb', 'w+')
    io.puts("1000000000 100\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "6174 100000\n"' do
    io = IO.popen('ruby abc192/C.rb', 'w+')
    io.puts("6174 100000\n")
    io.close_write
    expect(io.readlines.join).to eq("6174\n")
  end
end
