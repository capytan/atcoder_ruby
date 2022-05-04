require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 5\n"' do
    io = IO.popen("ruby ../abc188/A.rb", "w+")
    io.puts("3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "16 2\n"' do
    io = IO.popen("ruby ../abc188/A.rb", "w+")
    io.puts("16 2\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "12 15\n"' do
    io = IO.popen("ruby ../abc188/A.rb", "w+")
    io.puts("12 15\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
