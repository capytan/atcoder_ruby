# frozen_string_literal: true

RSpec.describe 'abc396/A.rb' do
  it 'test with "5\n1 4 4 4 2\n"' do
    io = IO.popen('ruby abc396/A.rb', 'w+')
    io.puts("5\n1 4 4 4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "6\n2 4 4 2 2 4\n"' do
    io = IO.popen('ruby abc396/A.rb', 'w+')
    io.puts("6\n2 4 4 2 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "8\n1 4 2 5 7 7 7 2\n"' do
    io = IO.popen('ruby abc396/A.rb', 'w+')
    io.puts("8\n1 4 2 5 7 7 7 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "10\n1 2 3 4 5 6 7 8 9 10\n"' do
    io = IO.popen('ruby abc396/A.rb', 'w+')
    io.puts("10\n1 2 3 4 5 6 7 8 9 10\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "13\n1 1 1 1 1 1 1 1 1 1 1 1 1\n"' do
    io = IO.popen('ruby abc396/A.rb', 'w+')
    io.puts("13\n1 1 1 1 1 1 1 1 1 1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end
end
