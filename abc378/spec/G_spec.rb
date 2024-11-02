RSpec.describe 'abc378/G.rb' do
  it 'test with "3 2 998244353\n"' do
    io = IO.popen('ruby abc378/G.rb', 'w+')
    io.puts("3 2 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "10 12 924844033\n"' do
    io = IO.popen('ruby abc378/G.rb', 'w+')
    io.puts("10 12 924844033\n")
    io.close_write
    expect(io.readlines.join).to eq("623378361\n")
  end

end
