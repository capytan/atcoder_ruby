require 'rspec'

RSpec.describe 'test' do
  it 'test with "100 200 2\n"' do
    io = IO.popen("ruby ../abc195/B.rb", "w+")
    io.puts("100 200 2\n")
    io.close_write
    expect(io.readlines.join).to eq("10 20\n")
  end

  it 'test with "120 150 2\n"' do
    io = IO.popen("ruby ../abc195/B.rb", "w+")
    io.puts("120 150 2\n")
    io.close_write
    expect(io.readlines.join).to eq("14 16\n")
  end

  it 'test with "300 333 1\n"' do
    io = IO.popen("ruby ../abc195/B.rb", "w+")
    io.puts("300 333 1\n")
    io.close_write
    expect(io.readlines.join).to eq("UNSATISFIABLE\n")
  end

end
