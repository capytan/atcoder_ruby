# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 2\n1 2\n1 3\n"' do
    io = IO.popen('ruby jsc2021/B.rb', 'w+')
    io.puts("2 2\n1 2\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2 3\n")
  end

  it 'test with "4 4\n1 2 3 4\n1 2 3 4\n"' do
    io = IO.popen('ruby jsc2021/B.rb', 'w+')
    io.puts("4 4\n1 2 3 4\n1 2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("\n")
  end
end
