require 'rspec'

RSpec.describe 'test' do
  it 'test with "dIfFiCuLt\n"' do
    io = IO.popen("ruby ../abc192/B.rb", "w+")
    io.puts("dIfFiCuLt\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "eASY\n"' do
    io = IO.popen("ruby ../abc192/B.rb", "w+")
    io.puts("eASY\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "a\n"' do
    io = IO.popen("ruby ../abc192/B.rb", "w+")
    io.puts("a\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
