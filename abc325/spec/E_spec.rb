# frozen_string_literal: true

RSpec.describe 'test' do
  it 'test with "4 8 5 13\n0 6 2 15\n6 0 3 5\n2 3 0 13\n15 5 13 0\n"' do
    io = IO.popen('ruby abc325/E.rb', 'w+')
    io.puts("4 8 5 13\n0 6 2 15\n6 0 3 5\n2 3 0 13\n15 5 13 0\n")
    io.close_write
    expect(io.readlines.join).to eq("78\n")
  end

  it 'test with "3 1 1000000 1000000\n0 10 1\n10 0 10\n1 10 0\n"' do
    io = IO.popen('ruby abc325/E.rb', 'w+')
    io.puts("3 1 1000000 1000000\n0 10 1\n10 0 10\n1 10 0\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "5 954257 954213 814214\n0 84251 214529 10017 373342\n84251 0 91926 32336 164457\n214529 91926 0 108914 57762\n10017 32336 108914 0 234705\n373342 164457 57762 234705 0\n"' do
    io = IO.popen('ruby abc325/E.rb', 'w+')
    io.puts("5 954257 954213 814214\n0 84251 214529 10017 373342\n84251 0 91926 32336 164457\n214529 91926 0 108914 57762\n10017 32336 108914 0 234705\n373342 164457 57762 234705 0\n")
    io.close_write
    expect(io.readlines.join).to eq("168604826785\n")
  end
end
