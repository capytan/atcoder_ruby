# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n6 9 12\n"' do
    io = IO.popen('ruby abc191/F.rb', 'w+')
    io.puts("3\n6 9 12\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "4\n8 2 12 6\n"' do
    io = IO.popen('ruby abc191/F.rb', 'w+')
    io.puts("4\n8 2 12 6\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "7\n30 28 33 49 27 37 48\n"' do
    io = IO.popen('ruby abc191/F.rb', 'w+')
    io.puts("7\n30 28 33 49 27 37 48\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end
end
