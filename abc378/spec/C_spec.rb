# frozen_string_literal: true

RSpec.describe 'abc378/C.rb' do
  it 'test with "5\n1 2 1 1 3\n"' do
    io = IO.popen('ruby abc378/C.rb', 'w+')
    io.puts("5\n1 2 1 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("-1 -1 1 3 -1\n")
  end

  it 'test with "4\n1 1000000000 1000000000 1\n"' do
    io = IO.popen('ruby abc378/C.rb', 'w+')
    io.puts("4\n1 1000000000 1000000000 1\n")
    io.close_write
    expect(io.readlines.join).to eq("-1 -1 2 1\n")
  end
end
