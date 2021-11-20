require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n0 1 -1 0\n1 0 -1 -1\n-1 -1 0 0\n0 -1 0 0\n"' do
    io = IO.popen("ruby jsc2021/G.rb", "w+")
    io.puts("4\n0 1 -1 0\n1 0 -1 -1\n-1 -1 0 0\n0 -1 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3\n0 1 1\n1 0 1\n1 1 0\n"' do
    io = IO.popen("ruby jsc2021/G.rb", "w+")
    io.puts("3\n0 1 1\n1 0 1\n1 1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "3\n0 0 0\n0 0 0\n0 0 0\n"' do
    io = IO.popen("ruby jsc2021/G.rb", "w+")
    io.puts("3\n0 0 0\n0 0 0\n0 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "11\n0 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1\n-1 0 -1 -1 -1 -1 -1 -1 -1 -1 -1\n-1 -1 0 -1 -1 -1 -1 -1 -1 -1 -1\n-1 -1 -1 0 -1 -1 -1 -1 -1 -1 -1\n-1 -1 -1 -1 0 -1 -1 -1 -1 -1 -1\n-1 -1 -1 -1 -1 0 -1 -1 -1 -1 -1\n-1 -1 -1 -1 -1 -1 0 -1 -1 -1 -1\n-1 -1 -1 -1 -1 -1 -1 0 -1 -1 -1\n-1 -1 -1 -1 -1 -1 -1 -1 0 -1 -1\n-1 -1 -1 -1 -1 -1 -1 -1 -1 0 -1\n-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 0\n"' do
    io = IO.popen("ruby jsc2021/G.rb", "w+")
    io.puts("11\n0 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1\n-1 0 -1 -1 -1 -1 -1 -1 -1 -1 -1\n-1 -1 0 -1 -1 -1 -1 -1 -1 -1 -1\n-1 -1 -1 0 -1 -1 -1 -1 -1 -1 -1\n-1 -1 -1 -1 0 -1 -1 -1 -1 -1 -1\n-1 -1 -1 -1 -1 0 -1 -1 -1 -1 -1\n-1 -1 -1 -1 -1 -1 0 -1 -1 -1 -1\n-1 -1 -1 -1 -1 -1 -1 0 -1 -1 -1\n-1 -1 -1 -1 -1 -1 -1 -1 0 -1 -1\n-1 -1 -1 -1 -1 -1 -1 -1 -1 0 -1\n-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("357947677\n")
  end

end
