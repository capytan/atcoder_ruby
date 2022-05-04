require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n8 5\n4 4\n7 9\n"' do
    io = IO.popen("ruby ../abc194/B.rb", "w+")
    io.puts("3\n8 5\n4 4\n7 9\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "3\n11 7\n3 2\n6 7\n"' do
    io = IO.popen("ruby ../abc194/B.rb", "w+")
    io.puts("3\n11 7\n3 2\n6 7\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
