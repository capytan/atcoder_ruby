require 'rspec'

RSpec.describe 'test' do
  it 'test with "22\n10\n"' do
    io = IO.popen("ruby abc192/D.rb", "w+")
    io.puts("22\n10\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "999\n1500\n"' do
    io = IO.popen("ruby abc192/D.rb", "w+")
    io.puts("999\n1500\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "100000000000000000000000000000000000000000000000000000000000\n1000000000000000000\n"' do
    io = IO.popen("ruby abc192/D.rb", "w+")
    io.puts("100000000000000000000000000000000000000000000000000000000000\n1000000000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
