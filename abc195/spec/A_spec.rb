require 'rspec'

RSpec.describe 'test' do
  it 'test with "10 120\n"' do
    io = IO.popen("ruby abc195/A.rb", "w+")
    io.puts("10 120\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "10 125\n"' do
    io = IO.popen("ruby abc195/A.rb", "w+")
    io.puts("10 125\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
