# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n2 1\n2 2\n5 1\n1 3\n"' do
    io = IO.popen('ruby abc187/D.rb', 'w+')
    io.puts("4\n2 1\n2 2\n5 1\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "5\n2 1\n2 1\n2 1\n2 1\n2 1\n"' do
    io = IO.popen('ruby abc187/D.rb', 'w+')
    io.puts("5\n2 1\n2 1\n2 1\n2 1\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1\n273 691\n"' do
    io = IO.popen('ruby abc187/D.rb', 'w+')
    io.puts("1\n273 691\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end
end
