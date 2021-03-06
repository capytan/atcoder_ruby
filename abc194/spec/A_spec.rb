require 'rspec'

RSpec.describe 'test' do
  it 'test with "10 8\n"' do
    io = IO.popen("ruby abc194/A.rb", "w+")
    io.puts("10 8\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "1 2\n"' do
    io = IO.popen("ruby abc194/A.rb", "w+")
    io.puts("1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "0 0\n"' do
    io = IO.popen("ruby abc194/A.rb", "w+")
    io.puts("0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
