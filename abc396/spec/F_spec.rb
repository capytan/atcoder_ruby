# frozen_string_literal: true

RSpec.describe 'abc396/F.rb' do
  it 'test with "3 3\n2 1 0\n"' do
    io = IO.popen('ruby abc396/F.rb', 'w+')
    io.puts("3 3\n2 1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n1\n1\n")
  end

  it 'test with "5 6\n5 3 5 0 1\n"' do
    io = IO.popen('ruby abc396/F.rb', 'w+')
    io.puts("5 6\n5 3 5 0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n3\n3\n1\n1\n5\n")
  end

  it 'test with "7 7\n0 1 2 3 4 5 6\n"' do
    io = IO.popen('ruby abc396/F.rb', 'w+')
    io.puts("7 7\n0 1 2 3 4 5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n6\n10\n12\n12\n10\n6\n")
  end
end
