RSpec.describe 'test' do
  it 'test with "3\n3 5 10\n4 3 3\n2 2 6\n"' do
    io = IO.popen("ruby abc325/F.rb", "w+")
    io.puts("3\n3 5 10\n4 3 3\n2 2 6\n")
    io.close_write
    expect(io.readlines.join).to eq("17\n")
  end

  it 'test with "3\n3 5 10\n4 3 3\n2 2 3\n"' do
    io = IO.popen("ruby abc325/F.rb", "w+")
    io.puts("3\n3 5 10\n4 3 3\n2 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "2\n4 8\n3 1 100\n4 10000 100\n"' do
    io = IO.popen("ruby abc325/F.rb", "w+")
    io.puts("2\n4 8\n3 1 100\n4 10000 100\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
