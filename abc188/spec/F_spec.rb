require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 9\n"' do
    io = IO.popen("ruby ../abc188/F.rb", "w+")
    io.puts("3 9\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "7 11\n"' do
    io = IO.popen("ruby ../abc188/F.rb", "w+")
    io.puts("7 11\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1000000000000000000 1000000000000000000\n"' do
    io = IO.popen("ruby ../abc188/F.rb", "w+")
    io.puts("1000000000000000000 1000000000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
