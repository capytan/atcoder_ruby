RSpec.describe 'test' do
  it 'test with "3\n5 0\n3 3\n2 18\n"' do
    io = IO.popen("ruby abc325/B.rb", "w+")
    io.puts("3\n5 0\n3 3\n2 18\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "2\n1 10\n1000000 20\n"' do
    io = IO.popen("ruby abc325/B.rb", "w+")
    io.puts("2\n1 10\n1000000 20\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000\n")
  end

  it 'test with "6\n31 3\n20 8\n11 5\n4 3\n47 14\n1 18\n"' do
    io = IO.popen("ruby abc325/B.rb", "w+")
    io.puts("6\n31 3\n20 8\n11 5\n4 3\n47 14\n1 18\n")
    io.close_write
    expect(io.readlines.join).to eq("67\n")
  end

end
