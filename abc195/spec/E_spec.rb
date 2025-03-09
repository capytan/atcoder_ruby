# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n35\nAT\n"' do
    io = IO.popen('ruby abc195/E.rb', 'w+')
    io.puts("2\n35\nAT\n")
    io.close_write
    expect(io.readlines.join).to eq("Takahashi\n")
  end

  it 'test with "5\n12345\nAAAAT\n"' do
    io = IO.popen('ruby abc195/E.rb', 'w+')
    io.puts("5\n12345\nAAAAT\n")
    io.close_write
    expect(io.readlines.join).to eq("Aoki\n")
  end

  it 'test with "5\n67890\nTTTTA\n"' do
    io = IO.popen('ruby abc195/E.rb', 'w+')
    io.puts("5\n67890\nTTTTA\n")
    io.close_write
    expect(io.readlines.join).to eq("Takahashi\n")
  end

  it 'test with "5\n12345\nATATA\n"' do
    io = IO.popen('ruby abc195/E.rb', 'w+')
    io.puts("5\n12345\nATATA\n")
    io.close_write
    expect(io.readlines.join).to eq("Aoki\n")
  end
end
