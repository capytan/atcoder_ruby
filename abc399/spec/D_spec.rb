# frozen_string_literal: true

RSpec.describe 'abc399/D.rb' do
  it 'test with "3\n3\n1 2 3 3 1 2\n4\n1 1 2 2 3 3 4 4\n5\n1 2 3 4 5 1 2 3 4 5\n"' do
    io = IO.popen('ruby abc399/D.rb', 'w+')
    io.puts("3\n3\n1 2 3 3 1 2\n4\n1 1 2 2 3 3 4 4\n5\n1 2 3 4 5 1 2 3 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n0\n4\n")
  end
end
