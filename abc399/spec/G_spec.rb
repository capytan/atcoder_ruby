# frozen_string_literal: true

RSpec.describe 'abc399/G.rb' do
  it 'test with "3 4 3\n1 2 1\n1 2 1\n1 2 2\n1 3 3\n2 3 2\n"' do
    io = IO.popen('ruby abc399/G.rb', 'w+')
    io.puts("3 4 3\n1 2 1\n1 2 1\n1 2 2\n1 3 3\n2 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "5 10 6\n2 2 4 1 1 1\n1 3 2\n1 5 4\n2 3 3\n1 4 1\n4 5 1\n4 5 3\n2 4 1\n1 4 3\n1 3 4\n1 2 5\n"' do
    io = IO.popen('ruby abc399/G.rb', 'w+')
    io.puts("5 10 6\n2 2 4 1 1 1\n1 3 2\n1 5 4\n2 3 3\n1 4 1\n4 5 1\n4 5 3\n2 4 1\n1 4 3\n1 3 4\n1 2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

  it 'test with "10 20 5\n2 4 4 6 4\n5 9 1\n4 5 2\n2 8 5\n8 9 4\n1 10 5\n8 10 1\n8 9 5\n4 8 2\n4 10 4\n5 8 3\n5 9 5\n6 10 2\n3 5 4\n4 6 1\n3 4 3\n7 9 3\n5 7 1\n1 3 3\n1 8 5\n5 10 4\n"' do
    io = IO.popen('ruby abc399/G.rb', 'w+')
    io.puts("10 20 5\n2 4 4 6 4\n5 9 1\n4 5 2\n2 8 5\n8 9 4\n1 10 5\n8 10 1\n8 9 5\n4 8 2\n4 10 4\n5 8 3\n5 9 5\n6 10 2\n3 5 4\n4 6 1\n3 4 3\n7 9 3\n5 7 1\n1 3 3\n1 8 5\n5 10 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end
end
