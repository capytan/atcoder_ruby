require 'rspec'

RSpec.describe 'test' do
  it 'test with "140\n"' do
    io = IO.popen("ruby ../abc192/A.rb", "w+")
    io.puts("140\n")
    io.close_write
    expect(io.readlines.join).to eq("60\n")
  end

  it 'test with "1000\n"' do
    io = IO.popen("ruby ../abc192/A.rb", "w+")
    io.puts("1000\n")
    io.close_write
    expect(io.readlines.join).to eq("100\n")
  end

end
