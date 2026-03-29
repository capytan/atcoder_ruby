# frozen_string_literal: true

RSpec.describe 'abc451/B.rb' do
  it 'test with "5 4\n1 2\n2 1\n3 1\n2 2\n2 4\n"' do
    io = IO.popen('ruby abc451/B.rb', 'w+')
    io.puts("5 4\n1 2\n2 1\n3 1\n2 2\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n-1\n-1\n1\n")
  end

  it 'test with "10 5\n3 2\n3 4\n1 2\n2 2\n4 4\n3 1\n3 4\n4 2\n3 3\n3 2\n"' do
    io = IO.popen('ruby abc451/B.rb', 'w+')
    io.puts("10 5\n3 2\n3 4\n1 2\n2 2\n4 4\n3 1\n3 4\n4 2\n3 3\n3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n4\n-5\n1\n0\n")
  end
end
