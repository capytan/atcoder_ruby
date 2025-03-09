# frozen_string_literal: true

RSpec.describe 'abc378/A.rb' do
  it 'test with "2 1 2 1\n"' do
    io = IO.popen('ruby abc378/A.rb', 'w+')
    io.puts("2 1 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "4 4 4 1\n"' do
    io = IO.popen('ruby abc378/A.rb', 'w+')
    io.puts("4 4 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "1 2 3 4\n"' do
    io = IO.popen('ruby abc378/A.rb', 'w+')
    io.puts("1 2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end
end
