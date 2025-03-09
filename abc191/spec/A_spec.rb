require 'rspec'

RSpec.describe 'test' do
  it 'test with "10 3 5 20\n"' do
    io = IO.popen("ruby abc191/A.rb", "w+")
    io.puts("10 3 5 20\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "10 3 5 30\n"' do
    io = IO.popen("ruby abc191/A.rb", "w+")
    io.puts("10 3 5 30\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
