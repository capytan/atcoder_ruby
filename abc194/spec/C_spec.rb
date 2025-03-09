require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n2 8 4\n"' do
    io = IO.popen("ruby abc194/C.rb", "w+")
    io.puts("3\n2 8 4\n")
    io.close_write
    expect(io.readlines.join).to eq("56\n")
  end

  it 'test with "5\n-5 8 9 -4 -3\n"' do
    io = IO.popen("ruby abc194/C.rb", "w+")
    io.puts("5\n-5 8 9 -4 -3\n")
    io.close_write
    expect(io.readlines.join).to eq("950\n")
  end

end
