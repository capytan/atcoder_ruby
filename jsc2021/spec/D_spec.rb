# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 3\n"' do
    io = IO.popen('ruby jsc2021/D.rb', 'w+')
    io.puts("3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 2\n"' do
    io = IO.popen('ruby jsc2021/D.rb', 'w+')
    io.puts("3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "45108 2571593\n"' do
    io = IO.popen('ruby jsc2021/D.rb', 'w+')
    io.puts("45108 2571593\n")
    io.close_write
    expect(io.readlines.join).to eq("224219544\n")
  end
end
