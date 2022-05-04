require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 9999999999\n3 6 8\n"' do
    io = IO.popen("ruby ../abc192/F.rb", "w+")
    io.puts("3 9999999999\n3 6 8\n")
    io.close_write
    expect(io.readlines.join).to eq("4999999994\n")
  end

  it 'test with "1 1000000000000000000\n1\n"' do
    io = IO.popen("ruby ../abc192/F.rb", "w+")
    io.puts("1 1000000000000000000\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("999999999999999999\n")
  end

end
