# frozen_string_literal: true

RSpec.describe 'abc378/E.rb' do
  it 'test with "3 4\n2 5 0\n"' do
    io = IO.popen('ruby abc378/E.rb', 'w+')
    io.puts("3 4\n2 5 0\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "10 100\n320 578 244 604 145 839 156 857 556 400\n"' do
    io = IO.popen('ruby abc378/E.rb', 'w+')
    io.puts("10 100\n320 578 244 604 145 839 156 857 556 400\n")
    io.close_write
    expect(io.readlines.join).to eq("2736\n")
  end
end
