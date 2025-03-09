# frozen_string_literal: true

require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\naabaaaabaa\n"' do
    io = IO.popen('ruby jsc2021/E.rb', 'w+')
    io.puts("4\naabaaaabaa\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "2\naabaaaabaa\n"' do
    io = IO.popen('ruby jsc2021/E.rb', 'w+')
    io.puts("2\naabaaaabaa\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3\naabaaaabaa\n"' do
    io = IO.popen('ruby jsc2021/E.rb', 'w+')
    io.puts("3\naabaaaabaa\n")
    io.close_write
    expect(io.readlines.join).to eq("impossible\n")
  end

  it 'test with "5\naabaaaabaa\n"' do
    io = IO.popen('ruby jsc2021/E.rb', 'w+')
    io.puts("5\naabaaaabaa\n")
    io.close_write
    expect(io.readlines.join).to eq("impossible\n")
  end

  it 'test with "2\nacaabcbababaaac\n"' do
    io = IO.popen('ruby jsc2021/E.rb', 'w+')
    io.puts("2\nacaabcbababaaac\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end
end
