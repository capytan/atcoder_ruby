require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 3\n2 3 1 5\n2 4\n1 2\n1 3\n"' do
    io = IO.popen("ruby ../abc188/E.rb", "w+")
    io.puts("4 3\n2 3 1 5\n2 4\n1 2\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "5 5\n13 8 3 15 18\n2 4\n1 2\n4 5\n2 3\n1 3\n"' do
    io = IO.popen("ruby ../abc188/E.rb", "w+")
    io.puts("5 5\n13 8 3 15 18\n2 4\n1 2\n4 5\n2 3\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "3 1\n1 100 1\n2 3\n"' do
    io = IO.popen("ruby ../abc188/E.rb", "w+")
    io.puts("3 1\n1 100 1\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("-99\n")
  end

end
