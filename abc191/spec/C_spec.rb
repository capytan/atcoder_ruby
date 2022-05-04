require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 5\n.....\n.###.\n.###.\n.###.\n.....\n"' do
    io = IO.popen("ruby ../abc191/C.rb", "w+")
    io.puts("5 5\n.....\n.###.\n.###.\n.###.\n.....\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
