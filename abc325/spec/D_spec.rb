# frozen_string_literal: true

RSpec.describe 'test' do
  it 'test with "5\n1 1\n1 1\n2 1\n1 2\n1 4\n"' do
    io = IO.popen('ruby abc325/D.rb', 'w+')
    io.puts("5\n1 1\n1 1\n2 1\n1 2\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "2\n1 1\n1000000000000000000 1000000000000000000\n"' do
    io = IO.popen('ruby abc325/D.rb', 'w+')
    io.puts("2\n1 1\n1000000000000000000 1000000000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "10\n4 1\n1 2\n1 4\n3 2\n5 1\n5 1\n4 1\n2 1\n4 1\n2 4\n"' do
    io = IO.popen('ruby abc325/D.rb', 'w+')
    io.puts("10\n4 1\n1 2\n1 4\n3 2\n5 1\n5 1\n4 1\n2 1\n4 1\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end
end
