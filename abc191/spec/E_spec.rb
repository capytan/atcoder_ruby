require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 4\n1 2 5\n2 3 10\n3 1 15\n4 3 20\n"' do
    io = IO.popen("ruby abc191/E.rb", "w+")
    io.puts("4 4\n1 2 5\n2 3 10\n3 1 15\n4 3 20\n")
    io.close_write
    expect(io.readlines.join).to eq("30\n30\n30\n-1\n")
  end

  it 'test with "4 6\n1 2 5\n1 3 10\n2 4 5\n3 4 10\n4 1 10\n1 1 10\n"' do
    io = IO.popen("ruby abc191/E.rb", "w+")
    io.puts("4 6\n1 2 5\n1 3 10\n2 4 5\n3 4 10\n4 1 10\n1 1 10\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n20\n30\n20\n")
  end

  it 'test with "4 7\n1 2 10\n2 3 30\n1 4 15\n3 4 25\n3 4 20\n4 3 20\n4 3 30\n"' do
    io = IO.popen("ruby abc191/E.rb", "w+")
    io.puts("4 7\n1 2 10\n2 3 30\n1 4 15\n3 4 25\n3 4 20\n4 3 20\n4 3 30\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n-1\n40\n40\n")
  end

end
