# frozen_string_literal: true

RSpec.describe 'abc451/E.rb' do
  it 'test with "4\n2 5 4\n3 2\n5\n"' do
    io = IO.popen('ruby abc451/E.rb', 'w+')
    io.puts("4\n2 5 4\n3 2\n5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "4\n2 5 4\n3 2\n6\n"' do
    io = IO.popen('ruby abc451/E.rb', 'w+')
    io.puts("4\n2 5 4\n3 2\n6\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "10\n1039 1802 3781 231 5828 1944 392 262 1481\n763 2742 1270 4789 905 1431 1301 442\n1979 2033 5552 142 2194 2064 1205\n4012 7531 2121 4173 4043 3184\n6059 2175 161 493 1712\n5694 6220 6090 5231\n2336 2206 1347\n654 1873\n1743\n"' do
    io = IO.popen('ruby abc451/E.rb', 'w+')
    io.puts("10\n1039 1802 3781 231 5828 1944 392 262 1481\n763 2742 1270 4789 905 1431 1301 442\n1979 2033 5552 142 2194 2064 1205\n4012 7531 2121 4173 4043 3184\n6059 2175 161 493 1712\n5694 6220 6090 5231\n2336 2206 1347\n654 1873\n1743\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end
end
