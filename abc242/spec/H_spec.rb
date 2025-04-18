# frozen_string_literal: true

RSpec.describe 'test' do
  it 'test with "3 3\n1 1\n1 2\n2 3\n"' do
    io = IO.popen('ruby abc242/H.rb', 'w+')
    io.puts("3 3\n1 1\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("499122180\n")
  end

  it 'test with "13 10\n3 5\n5 9\n3 12\n1 13\n9 11\n12 13\n2 4\n9 12\n9 11\n7 11\n"' do
    io = IO.popen('ruby abc242/H.rb', 'w+')
    io.puts("13 10\n3 5\n5 9\n3 12\n1 13\n9 11\n12 13\n2 4\n9 12\n9 11\n7 11\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "100 11\n22 43\n84 93\n12 71\n49 56\n8 11\n1 61\n13 80\n26 83\n23 100\n80 85\n9 89\n"' do
    io = IO.popen('ruby abc242/H.rb', 'w+')
    io.puts("100 11\n22 43\n84 93\n12 71\n49 56\n8 11\n1 61\n13 80\n26 83\n23 100\n80 85\n9 89\n")
    io.close_write
    expect(io.readlines.join).to eq("499122193\n")
  end
end
