require 'rspec'

RSpec.describe 'test' do
  it 'test with "0 10\n0 10\n"' do
    io = IO.popen("ruby abc196/A.rb", "w+")
    io.puts("0 10\n0 10\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "-100 -100\n100 100\n"' do
    io = IO.popen("ruby abc196/A.rb", "w+")
    io.puts("-100 -100\n100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("-200\n")
  end

  it 'test with "-100 100\n-100 100\n"' do
    io = IO.popen("ruby abc196/A.rb", "w+")
    io.puts("-100 100\n-100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("200\n")
  end

end
