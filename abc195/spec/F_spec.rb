# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 4\n"' do
    io = IO.popen('ruby abc195/F.rb', 'w+')
    io.puts("2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "1 1\n"' do
    io = IO.popen('ruby abc195/F.rb', 'w+')
    io.puts("1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "123456789000 123456789050\n"' do
    io = IO.popen('ruby abc195/F.rb', 'w+')
    io.puts("123456789000 123456789050\n")
    io.close_write
    expect(io.readlines.join).to eq("2125824\n")
  end
end
