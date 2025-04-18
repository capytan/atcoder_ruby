# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 5\n3 5 6 5 4\n"' do
    io = IO.popen('ruby abc191/B.rb', 'w+')
    io.puts("5 5\n3 5 6 5 4\n")
    io.close_write
    expect(io.readlines.join).to eq("3 6 4\n")
  end

  it 'test with "3 3\n3 3 3\n"' do
    io = IO.popen('ruby abc191/B.rb', 'w+')
    io.puts("3 3\n3 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("\n")
  end
end
