RSpec.describe 'abc396/E.rb' do
  it 'test with "3 2\n1 3 4\n1 2 3\n"' do
    io = IO.popen('ruby abc396/E.rb', 'w+')
    io.puts("3 2\n1 3 4\n1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("0 3 4\n")
  end

  it 'test with "3 3\n1 3 4\n1 2 3\n2 3 5\n"' do
    io = IO.popen('ruby abc396/E.rb', 'w+')
    io.puts("3 3\n1 3 4\n1 2 3\n2 3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "5 8\n4 2 4\n2 3 11\n3 4 15\n4 5 6\n3 2 11\n3 3 0\n3 1 9\n3 4 15\n"' do
    io = IO.popen('ruby abc396/E.rb', 'w+')
    io.puts("5 8\n4 2 4\n2 3 11\n3 4 15\n4 5 6\n3 2 11\n3 3 0\n3 1 9\n3 4 15\n")
    io.close_write
    expect(io.readlines.join).to eq("0 2 9 6 0\n")
  end

end
