# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 2 1 2\n"' do
    io = IO.popen('ruby abc196/D.rb', 'w+')
    io.puts("2 2 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3 3 4 1\n"' do
    io = IO.popen('ruby abc196/D.rb', 'w+')
    io.puts("3 3 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("18\n")
  end

  it 'test with "4 4 8 0\n"' do
    io = IO.popen('ruby abc196/D.rb', 'w+')
    io.puts("4 4 8 0\n")
    io.close_write
    expect(io.readlines.join).to eq("36\n")
  end
end
