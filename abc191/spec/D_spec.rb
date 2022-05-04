require 'rspec'

RSpec.describe 'test' do
  it 'test with "0.2 0.8 1.1\n"' do
    io = IO.popen("ruby ../abc191/D.rb", "w+")
    io.puts("0.2 0.8 1.1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "100 100 1\n"' do
    io = IO.popen("ruby ../abc191/D.rb", "w+")
    io.puts("100 100 1\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "42782.4720 31949.0192 99999.99\n"' do
    io = IO.popen("ruby ../abc191/D.rb", "w+")
    io.puts("42782.4720 31949.0192 99999.99\n")
    io.close_write
    expect(io.readlines.join).to eq("31415920098\n")
  end

end
