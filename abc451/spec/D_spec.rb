# frozen_string_literal: true

RSpec.describe 'abc451/D.rb' do
  it 'test with "10\n"' do
    io = IO.popen('ruby abc451/D.rb', 'w+')
    io.puts("10\n")
    io.close_write
    expect(io.readlines.join).to eq("21\n")
  end

  it 'test with "69\n"' do
    io = IO.popen('ruby abc451/D.rb', 'w+')
    io.puts("69\n")
    io.close_write
    expect(io.readlines.join).to eq("328\n")
  end

  it 'test with "1099898\n"' do
    io = IO.popen('ruby abc451/D.rb', 'w+')
    io.puts("1099898\n")
    io.close_write
    expect(io.readlines.join).to eq("819264512\n")
  end
end
