# frozen_string_literal: true

RSpec.describe 'abc396/B.rb' do
  it 'test with "6\n2\n1 4\n1 3\n2\n2\n2\n"' do
    io = IO.popen('ruby abc396/B.rb', 'w+')
    io.puts("6\n2\n1 4\n1 3\n2\n2\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n3\n4\n0\n")
  end

  it 'test with "5\n2\n2\n2\n2\n2\n"' do
    io = IO.popen('ruby abc396/B.rb', 'w+')
    io.puts("5\n2\n2\n2\n2\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n0\n0\n0\n0\n")
  end
end
