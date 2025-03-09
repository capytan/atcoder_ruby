# frozen_string_literal: true

RSpec.describe 'abc396/G.rb' do
  it 'test with "3 3\n100\n010\n110\n"' do
    io = IO.popen('ruby abc396/G.rb', 'w+')
    io.puts("3 3\n100\n010\n110\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 4\n1111\n1111\n1111\n"' do
    io = IO.popen('ruby abc396/G.rb', 'w+')
    io.puts("3 4\n1111\n1111\n1111\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10 5\n10000\n00111\n11000\n01000\n10110\n01110\n10101\n00100\n00100\n10001\n"' do
    io = IO.popen('ruby abc396/G.rb', 'w+')
    io.puts("10 5\n10000\n00111\n11000\n01000\n10110\n01110\n10101\n00100\n00100\n10001\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end
end
