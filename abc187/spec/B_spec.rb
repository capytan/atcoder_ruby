require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n0 0\n1 2\n2 1\n"' do
    io = IO.popen("ruby abc187/B.rb", "w+")
    io.puts("3\n0 0\n1 2\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "1\n-691 273\n"' do
    io = IO.popen("ruby abc187/B.rb", "w+")
    io.puts("1\n-691 273\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10\n-31 -35\n8 -36\n22 64\n5 73\n-14 8\n18 -58\n-41 -85\n1 -88\n-21 -85\n-11 82\n"' do
    io = IO.popen("ruby abc187/B.rb", "w+")
    io.puts("10\n-31 -35\n8 -36\n22 64\n5 73\n-14 8\n18 -58\n-41 -85\n1 -88\n-21 -85\n-11 82\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

end
