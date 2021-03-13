require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 4 3\n1 9\n5 3\n7 8\n1 8 6 9\n4 4\n1 4\n1 3\n"' do
    io = IO.popen("ruby abc195/D.rb", "w+")
    io.puts("3 4 3\n1 9\n5 3\n7 8\n1 8 6 9\n4 4\n1 4\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("20\n0\n9\n")
  end

end
