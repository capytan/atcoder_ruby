require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 2 4\n1 1 10\n2 1 20\n2 2 5\n1 1 30\n"' do
    io = IO.popen("ruby jsc2021/F.rb", "w+")
    io.puts("2 2 4\n1 1 10\n2 1 20\n2 2 5\n1 1 30\n")
    io.close_write
    expect(io.readlines.join).to eq("20\n50\n55\n85\n")
  end

  it 'test with "3 3 5\n1 3 10\n2 1 7\n1 3 5\n2 2 10\n2 1 1\n"' do
    io = IO.popen("ruby jsc2021/F.rb", "w+")
    io.puts("3 3 5\n1 3 10\n2 1 7\n1 3 5\n2 2 10\n2 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("30\n44\n31\n56\n42\n")
  end

  it 'test with "200000 200000 4\n2 112219 100000000\n1 73821 100000000\n2 26402 100000000\n1 73821 100000000\n"' do
    io = IO.popen("ruby jsc2021/F.rb", "w+")
    io.puts("200000 200000 4\n2 112219 100000000\n1 73821 100000000\n2 26402 100000000\n1 73821 100000000\n")
    io.close_write
    expect(io.readlines.join).to eq("20000000000000\n39999900000000\n59999800000000\n59999800000000\n")
  end

end
