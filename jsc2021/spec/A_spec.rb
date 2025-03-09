# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "100 200 100\n"' do
    io = IO.popen('ruby jsc2021/A.rb', 'w+')
    io.puts("100 200 100\n")
    io.close_write
    expect(io.readlines.join).to eq("199\n")
  end

  it 'test with "103 971 593\n"' do
    io = IO.popen('ruby jsc2021/A.rb', 'w+')
    io.puts("103 971 593\n")
    io.close_write
    expect(io.readlines.join).to eq("5590\n")
  end

  it 'test with "1000 1 1\n"' do
    io = IO.popen('ruby jsc2021/A.rb', 'w+')
    io.puts("1000 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end
end
