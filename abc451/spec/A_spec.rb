# frozen_string_literal: true

RSpec.describe 'abc451/A.rb' do
  it 'test with "legal\n"' do
    io = IO.popen('ruby abc451/A.rb', 'w+')
    io.puts("legal\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "atcoder\n"' do
    io = IO.popen('ruby abc451/A.rb', 'w+')
    io.puts("atcoder\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "illegal\n"' do
    io = IO.popen('ruby abc451/A.rb', 'w+')
    io.puts("illegal\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end
end
