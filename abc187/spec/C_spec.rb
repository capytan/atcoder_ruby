require 'rspec'

RSpec.describe 'test' do
  it 'test with "6\na\n!a\nb\n!c\nd\n!d\n"' do
    io = IO.popen("ruby ../abc187/C.rb", "w+")
    io.puts("6\na\n!a\nb\n!c\nd\n!d\n")
    io.close_write
    expect(io.readlines.join).to eq("a\n")
  end

  it 'test with "10\nred\nred\nred\n!orange\nyellow\n!blue\ncyan\n!green\nbrown\n!gray\n"' do
    io = IO.popen("ruby ../abc187/C.rb", "w+")
    io.puts("10\nred\nred\nred\n!orange\nyellow\n!blue\ncyan\n!green\nbrown\n!gray\n")
    io.close_write
    expect(io.readlines.join).to eq("satisfiable\n")
  end

end
