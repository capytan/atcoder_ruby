# frozen_string_literal: true

RSpec.describe 'abc399/C.rb' do
  it 'test with "4 4\n1 2\n1 3\n2 4\n3 4\n"' do
    io = IO.popen('ruby abc399/C.rb', 'w+')
    io.puts("4 4\n1 2\n1 3\n2 4\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "5 0\n"' do
    io = IO.popen('ruby abc399/C.rb', 'w+')
    io.puts("5 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10 10\n7 9\n4 6\n6 10\n2 5\n5 6\n5 9\n6 8\n4 8\n1 5\n1 4\n"' do
    io = IO.popen('ruby abc399/C.rb', 'w+')
    io.puts("10 10\n7 9\n4 6\n6 10\n2 5\n5 6\n5 9\n6 8\n4 8\n1 5\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end
end
