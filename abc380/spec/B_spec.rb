RSpec.describe 'test' do
  it 'test with "|---|-|----|-|-----|\n"' do
    io = IO.popen("ruby abc380/B.rb", "w+")
    io.puts("|---|-|----|-|-----|\n")
    io.close_write
    expect(io.readlines.join).to eq("3 1 4 1 5\n")
  end

  it 'test with "|----------|\n"' do
    io = IO.popen("ruby abc380/B.rb", "w+")
    io.puts("|----------|\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "|-|-|-|------|\n"' do
    io = IO.popen("ruby abc380/B.rb", "w+")
    io.puts("|-|-|-|------|\n")
    io.close_write
    expect(io.readlines.join).to eq("1 1 1 6\n")
  end
end
