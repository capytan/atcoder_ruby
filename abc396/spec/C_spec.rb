# frozen_string_literal: true

RSpec.describe 'abc396/C.rb' do
  it 'test with "4 3\n8 5 -1 3\n3 -2 -4\n"' do
    io = IO.popen('ruby abc396/C.rb', 'w+')
    io.puts("4 3\n8 5 -1 3\n3 -2 -4\n")
    io.close_write
    expect(io.readlines.join).to eq("19\n")
  end

  it 'test with "4 3\n5 -10 -2 -5\n8 1 4\n"' do
    io = IO.popen('ruby abc396/C.rb', 'w+')
    io.puts("4 3\n5 -10 -2 -5\n8 1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("15\n")
  end

  it 'test with "3 5\n-36 -33 -31\n12 12 28 24 27\n"' do
    io = IO.popen('ruby abc396/C.rb', 'w+')
    io.puts("3 5\n-36 -33 -31\n12 12 28 24 27\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end
end
