# frozen_string_literal: true

RSpec.describe 'abc399/E.rb' do
  it 'test with "6\nafbfda\nbkckbb\n"' do
    io = IO.popen('ruby abc399/E.rb', 'w+')
    io.puts("6\nafbfda\nbkckbb\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "4\nabac\nabac\n"' do
    io = IO.popen('ruby abc399/E.rb', 'w+')
    io.puts("4\nabac\nabac\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "4\nabac\nabrc\n"' do
    io = IO.popen('ruby abc399/E.rb', 'w+')
    io.puts("4\nabac\nabrc\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "4\nabac\nbcba\n"' do
    io = IO.popen('ruby abc399/E.rb', 'w+')
    io.puts("4\nabac\nbcba\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end
end
