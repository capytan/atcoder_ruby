# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n-3 6\n4 2\n"' do
    io = IO.popen('ruby abc188/B.rb', 'w+')
    io.puts("2\n-3 6\n4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2\n4 5\n-1 -3\n"' do
    io = IO.popen('ruby abc188/B.rb', 'w+')
    io.puts("2\n4 5\n-1 -3\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "3\n1 3 5\n3 -6 3\n"' do
    io = IO.popen('ruby abc188/B.rb', 'w+')
    io.puts("3\n1 3 5\n3 -6 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end
end
