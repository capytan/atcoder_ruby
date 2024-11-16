# frozen_string_literal: true

RSpec.describe 'test' do
  it 'test with "15 3\n010011100011001\n"' do
    io = IO.popen("ruby ../abc380/C.rb", "w+")
    io.puts("15 3\n010011100011001\n")
    io.close_write
    expect(io.readlines.join).to eq("010011111000001\n")
  end

  it 'test with "10 2\n1011111111\n"' do
    io = IO.popen("ruby ../abc380/C.rb", "w+")
    io.puts("10 2\n1011111111\n")
    io.close_write
    expect(io.readlines.join).to eq("1111111110\n")
  end
end
