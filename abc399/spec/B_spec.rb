# frozen_string_literal: true

RSpec.describe 'abc399/B.rb' do
  it 'test with "4\n3 12 9 9\n"' do
    io = IO.popen('ruby abc399/B.rb', 'w+')
    io.puts("4\n3 12 9 9\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n1\n2\n2\n")
  end

  it 'test with "3\n3 9 6\n"' do
    io = IO.popen('ruby abc399/B.rb', 'w+')
    io.puts("3\n3 9 6\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n1\n2\n")
  end

  it 'test with "4\n100 100 100 100\n"' do
    io = IO.popen('ruby abc399/B.rb', 'w+')
    io.puts("4\n100 100 100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n1\n1\n")
  end

  it 'test with "8\n87 87 87 88 41 38 41 38\n"' do
    io = IO.popen('ruby abc399/B.rb', 'w+')
    io.puts("8\n87 87 87 88 41 38 41 38\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n2\n2\n1\n5\n7\n5\n7\n")
  end
end
