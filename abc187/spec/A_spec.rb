require 'rspec'

RSpec.describe 'test' do
  it 'test with "123 234\n"' do
    io = IO.popen("ruby ../abc187/A.rb", "w+")
    io.puts("123 234\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "593 953\n"' do
    io = IO.popen("ruby ../abc187/A.rb", "w+")
    io.puts("593 953\n")
    io.close_write
    expect(io.readlines.join).to eq("17\n")
  end

  it 'test with "100 999\n"' do
    io = IO.popen("ruby ../abc187/A.rb", "w+")
    io.puts("100 999\n")
    io.close_write
    expect(io.readlines.join).to eq("27\n")
  end

end
