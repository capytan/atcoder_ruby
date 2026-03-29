# frozen_string_literal: true

RSpec.describe 'abc451/F.rb' do
  it 'test with "4 4\n1 2\n2 3\n3 4\n1 3\n"' do
    io = IO.popen('ruby abc451/F.rb', 'w+')
    io.puts("4 4\n1 2\n2 3\n3 4\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n2\n-1\n")
  end

  it 'test with "10 10\n1 10\n6 7\n2 7\n4 9\n5 9\n6 10\n7 8\n2 5\n3 4\n8 10\n"' do
    io = IO.popen('ruby abc451/F.rb', 'w+')
    io.puts("10 10\n1 10\n6 7\n2 7\n4 9\n5 9\n6 10\n7 8\n2 5\n3 4\n8 10\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n2\n3\n3\n3\n3\n4\n4\n4\n")
  end
end
