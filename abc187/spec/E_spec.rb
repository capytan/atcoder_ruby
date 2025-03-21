# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n1 2\n2 3\n2 4\n4 5\n4\n1 1 1\n1 4 10\n2 1 100\n2 2 1000\n"' do
    io = IO.popen('ruby abc187/E.rb', 'w+')
    io.puts("5\n1 2\n2 3\n2 4\n4 5\n4\n1 1 1\n1 4 10\n2 1 100\n2 2 1000\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n110\n1110\n110\n100\n")
  end

  it 'test with "7\n2 1\n2 3\n4 2\n4 5\n6 1\n3 7\n7\n2 2 1\n1 3 2\n2 2 4\n1 6 8\n1 3 16\n2 4 32\n2 1 64\n"' do
    io = IO.popen('ruby abc187/E.rb', 'w+')
    io.puts("7\n2 1\n2 3\n4 2\n4 5\n6 1\n3 7\n7\n2 2 1\n1 3 2\n2 2 4\n1 6 8\n1 3 16\n2 4 32\n2 1 64\n")
    io.close_write
    expect(io.readlines.join).to eq("72\n8\n13\n26\n58\n72\n5\n")
  end

  it 'test with "11\n2 1\n1 3\n3 4\n5 2\n1 6\n1 7\n5 8\n3 9\n3 10\n11 4\n10\n2 6 688\n1 10 856\n1 8 680\n1 8 182\n2 2 452\n2 4 183\n2 6 518\n1 3 612\n2 6 339\n2 3 206\n"' do
    io = IO.popen('ruby abc187/E.rb', 'w+')
    io.puts("11\n2 1\n1 3\n3 4\n5 2\n1 6\n1 7\n5 8\n3 9\n3 10\n11 4\n10\n2 6 688\n1 10 856\n1 8 680\n1 8 182\n2 2 452\n2 4 183\n2 6 518\n1 3 612\n2 6 339\n2 3 206\n")
    io.close_write
    expect(io.readlines.join).to eq("1657\n1657\n2109\n1703\n1474\n1657\n3202\n1474\n1247\n2109\n2559\n")
  end
end
