# frozen_string_literal: true

RSpec.describe 'abc378/F.rb' do
  it 'test with "6\n1 2\n2 3\n3 4\n4 5\n3 6\n"' do
    io = IO.popen('ruby abc378/F.rb', 'w+')
    io.puts("6\n1 2\n2 3\n3 4\n4 5\n3 6\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "7\n1 2\n2 7\n3 5\n7 3\n6 2\n4 7\n"' do
    io = IO.popen('ruby abc378/F.rb', 'w+')
    io.puts("7\n1 2\n2 7\n3 5\n7 3\n6 2\n4 7\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "15\n1 15\n11 14\n2 10\n1 7\n9 8\n6 9\n4 12\n14 5\n4 9\n8 11\n7 4\n1 13\n3 6\n11 10\n"' do
    io = IO.popen('ruby abc378/F.rb', 'w+')
    io.puts("15\n1 15\n11 14\n2 10\n1 7\n9 8\n6 9\n4 12\n14 5\n4 9\n8 11\n7 4\n1 13\n3 6\n11 10\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end
end
