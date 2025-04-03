# frozen_string_literal: true

RSpec.describe 'abc399/A.rb' do
  it 'test with "6\nabcarc\nagcahc\n"' do
    io = IO.popen('ruby abc399/A.rb', 'w+')
    io.puts("6\nabcarc\nagcahc\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "7\natcoder\ncontest\n"' do
    io = IO.popen('ruby abc399/A.rb', 'w+')
    io.puts("7\natcoder\ncontest\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "8\nchokudai\nchokudai\n"' do
    io = IO.popen('ruby abc399/A.rb', 'w+')
    io.puts("8\nchokudai\nchokudai\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10\nvexknuampx\nvzxikuamlx\n"' do
    io = IO.popen('ruby abc399/A.rb', 'w+')
    io.puts("10\nvexknuampx\nvzxikuamlx\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end
end
