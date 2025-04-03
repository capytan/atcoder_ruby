# frozen_string_literal: true

RSpec.describe 'abc399/F.rb' do
  it 'test with "3 2\n3 1 2\n"' do
    io = IO.popen('ruby abc399/F.rb', 'w+')
    io.puts("3 2\n3 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("75\n")
  end

  it 'test with "1 10\n0\n"' do
    io = IO.popen('ruby abc399/F.rb', 'w+')
    io.puts("1 10\n0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10 5\n91 59 85 60 57 72 12 3 27 16\n"' do
    io = IO.popen('ruby abc399/F.rb', 'w+')
    io.puts("10 5\n91 59 85 60 57 72 12 3 27 16\n")
    io.close_write
    expect(io.readlines.join).to eq("428633385\n")
  end
end
