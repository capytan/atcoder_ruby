require 'rspec'

RSpec.describe 'test' do
  it 'test with "33\n"' do
    io = IO.popen("ruby abc196/C.rb", "w+")
    io.puts("33\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1333\n"' do
    io = IO.popen("ruby abc196/C.rb", "w+")
    io.puts("1333\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "10000000\n"' do
    io = IO.popen("ruby abc196/C.rb", "w+")
    io.puts("10000000\n")
    io.close_write
    expect(io.readlines.join).to eq("999\n")
  end

end
