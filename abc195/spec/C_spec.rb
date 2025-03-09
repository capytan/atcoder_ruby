require 'rspec'

RSpec.describe 'test' do
  it 'test with "1010\n"' do
    io = IO.popen("ruby abc195/C.rb", "w+")
    io.puts("1010\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

  it 'test with "27182818284590\n"' do
    io = IO.popen("ruby abc195/C.rb", "w+")
    io.puts("27182818284590\n")
    io.close_write
    expect(io.readlines.join).to eq("107730272137364\n")
  end

end
