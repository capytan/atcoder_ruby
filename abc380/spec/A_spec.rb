RSpec.describe 'test' do
  it 'test with "123233\n"' do
    io = IO.popen("ruby ../abc380/A.rb", "w+")
    io.puts("123233\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "123234\n"' do
    io = IO.popen("ruby ../abc380/A.rb", "w+")
    io.puts("123234\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "323132\n"' do
    io = IO.popen("ruby ../abc380/A.rb", "w+")
    io.puts("323132\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end
end
