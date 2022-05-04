require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 2\n1 2\n1 3\n"' do
    io = IO.popen("ruby ../abc187/F.rb", "w+")
    io.puts("3 2\n1 2\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "4 6\n1 2\n1 3\n1 4\n2 3\n2 4\n3 4\n"' do
    io = IO.popen("ruby ../abc187/F.rb", "w+")
    io.puts("4 6\n1 2\n1 3\n1 4\n2 3\n2 4\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "10 11\n9 10\n2 10\n8 9\n3 4\n5 8\n1 8\n5 6\n2 5\n3 6\n6 9\n1 9\n"' do
    io = IO.popen("ruby ../abc187/F.rb", "w+")
    io.puts("10 11\n9 10\n2 10\n8 9\n3 4\n5 8\n1 8\n5 6\n2 5\n3 6\n6 9\n1 9\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "18 0\n"' do
    io = IO.popen("ruby ../abc187/F.rb", "w+")
    io.puts("18 0\n")
    io.close_write
    expect(io.readlines.join).to eq("18\n")
  end

end
