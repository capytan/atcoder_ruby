require 'rspec'

RSpec.describe 'test' do
  it 'test with "6\n1\n5\n6\n3\n2\n6"' do
    io = IO.popen('ruby past201912-open/D.rb', 'w+')
    io.puts("6\n1\n5\n6\n3\n2\n6")
    io.close_write
    expect(io.readlines.join).to eq("6 4\n")
  end
end
