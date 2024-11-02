RSpec.describe 'abc378/D.rb' do
  it 'test with "2 2 2\n.#\n..\n"' do
    io = IO.popen('ruby abc378/D.rb', 'w+')
    io.puts("2 2 2\n.#\n..\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "2 3 1\n.#.\n#.#\n"' do
    io = IO.popen('ruby abc378/D.rb', 'w+')
    io.puts("2 3 1\n.#.\n#.#\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10 10 11\n....#..#..\n.#.....##.\n..#...##..\n...#......\n......##..\n..#......#\n#........#\n..##......\n.###....#.\n...#.....#\n"' do
    io = IO.popen('ruby abc378/D.rb', 'w+')
    io.puts("10 10 11\n....#..#..\n.#.....##.\n..#...##..\n...#......\n......##..\n..#......#\n#........#\n..##......\n.###....#.\n...#.....#\n")
    io.close_write
    expect(io.readlines.join).to eq("218070\n")
  end

end
