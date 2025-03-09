# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen('ruby abc194/D.rb', 'w+')
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("2.00000000000\n")
  end

  it 'test with "3\n"' do
    io = IO.popen('ruby abc194/D.rb', 'w+')
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("4.50000000000\n")
  end
end
