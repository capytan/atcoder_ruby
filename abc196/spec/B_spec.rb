# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "5.90\n"' do
    io = IO.popen('ruby abc196/B.rb', 'w+')
    io.puts("5.90\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "0\n"' do
    io = IO.popen('ruby abc196/B.rb', 'w+')
    io.puts("0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "84939825309432908832902189.9092309409809091329\n"' do
    io = IO.popen('ruby abc196/B.rb', 'w+')
    io.puts("84939825309432908832902189.9092309409809091329\n")
    io.close_write
    expect(io.readlines.join).to eq("84939825309432908832902189\n")
  end
end
