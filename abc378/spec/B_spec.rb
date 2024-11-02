RSpec.describe 'abc378/B.rb' do
  it 'test with "2\n7 3\n4 2\n5\n1 1\n1 3\n1 4\n1 15\n2 7\n"' do
    io = IO.popen('ruby abc378/B.rb', 'w+')
    io.puts("2\n7 3\n4 2\n5\n1 1\n1 3\n1 4\n1 15\n2 7\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n3\n10\n17\n10\n")
  end

end
