require 'rspec'

RSpec.describe 'test' do
  it 'test with "10 1\n"' do
    io = IO.popen("ruby abc194/F.rb", "w+")
    io.puts("10 1\n")
    io.close_write
    expect(io.readlines.join).to eq("15\n")
  end

  it 'test with "FF 2\n"' do
    io = IO.popen("ruby abc194/F.rb", "w+")
    io.puts("FF 2\n")
    io.close_write
    expect(io.readlines.join).to eq("225\n")
  end

  it 'test with "100 2\n"' do
    io = IO.popen("ruby abc194/F.rb", "w+")
    io.puts("100 2\n")
    io.close_write
    expect(io.readlines.join).to eq("226\n")
  end

  it 'test with "1A8FD02 4\n"' do
    io = IO.popen("ruby abc194/F.rb", "w+")
    io.puts("1A8FD02 4\n")
    io.close_write
    expect(io.readlines.join).to eq("3784674\n")
  end

  it 'test with "DEADBEEFDEADBEEEEEEEEF 16\n"' do
    io = IO.popen("ruby abc194/F.rb", "w+")
    io.puts("DEADBEEFDEADBEEEEEEEEF 16\n")
    io.close_write
    expect(io.readlines.join).to eq("153954073\n")
  end

end
