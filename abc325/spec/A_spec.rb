RSpec.describe 'test' do
  it 'test with "Takahashi Chokudai\n"' do
    io = IO.popen("ruby abc325/A.rb", "w+")
    io.puts("Takahashi Chokudai\n")
    io.close_write
    expect(io.readlines.join).to eq("Takahashi san\n")
  end

  it 'test with "K Eyence\n"' do
    io = IO.popen("ruby abc325/A.rb", "w+")
    io.puts("K Eyence\n")
    io.close_write
    expect(io.readlines.join).to eq("K san\n")
  end

end
