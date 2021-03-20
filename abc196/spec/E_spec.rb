require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n-10 2\n10 1\n10 3\n5\n-15 -10 -5 0 5\n"' do
    io = IO.popen("ruby abc196/E.rb", "w+")
    io.puts("3\n-10 2\n10 1\n10 3\n5\n-15 -10 -5 0 5\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n0\n5\n10\n10\n")
  end

end
