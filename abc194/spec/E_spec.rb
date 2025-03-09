require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 2\n0 0 1\n"' do
    io = IO.popen("ruby abc194/E.rb", "w+")
    io.puts("3 2\n0 0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "3 2\n1 1 1\n"' do
    io = IO.popen("ruby abc194/E.rb", "w+")
    io.puts("3 2\n1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "3 2\n0 1 0\n"' do
    io = IO.popen("ruby abc194/E.rb", "w+")
    io.puts("3 2\n0 1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "7 3\n0 0 1 2 0 1 0\n"' do
    io = IO.popen("ruby abc194/E.rb", "w+")
    io.puts("7 3\n0 0 1 2 0 1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
