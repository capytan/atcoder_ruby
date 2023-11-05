RSpec.describe 'test' do
  it 'test with "5 6\n.##...\n...#..\n....##\n#.#...\n..#...\n"' do
    io = IO.popen("ruby abc325/C.rb", "w+")
    io.puts("5 6\n.##...\n...#..\n....##\n#.#...\n..#...\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3 3\n#.#\n.#.\n#.#\n"' do
    io = IO.popen("ruby abc325/C.rb", "w+")
    io.puts("3 3\n#.#\n.#.\n#.#\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "4 2\n..\n..\n..\n..\n"' do
    io = IO.popen("ruby abc325/C.rb", "w+")
    io.puts("4 2\n..\n..\n..\n..\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5 47\n.#..#..#####..#...#..#####..#...#...###...#####\n.#.#...#.......#.#...#......##..#..#...#..#....\n.##....#####....#....#####..#.#.#..#......#####\n.#.#...#........#....#......#..##..#...#..#....\n.#..#..#####....#....#####..#...#...###...#####\n"' do
    io = IO.popen("ruby abc325/C.rb", "w+")
    io.puts("5 47\n.#..#..#####..#...#..#####..#...#...###...#####\n.#.#...#.......#.#...#......##..#..#...#..#....\n.##....#####....#....#####..#.#.#..#......#####\n.#.#...#........#....#......#..##..#...#..#....\n.#..#..#####....#....#####..#...#...###...#####\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

end
