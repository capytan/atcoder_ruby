# frozen_string_literal: true

RSpec.describe 'abc396/D.rb' do
  it 'test with "4 4\n1 2 3\n2 4 5\n1 3 4\n3 4 7\n"' do
    io = IO.popen('ruby abc396/D.rb', 'w+')
    io.puts("4 4\n1 2 3\n2 4 5\n1 3 4\n3 4 7\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "4 3\n1 2 1\n2 3 2\n3 4 4\n"' do
    io = IO.popen('ruby abc396/D.rb', 'w+')
    io.puts("4 3\n1 2 1\n2 3 2\n3 4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "7 10\n1 2 726259430069220777\n1 4 988687862609183408\n1 5 298079271598409137\n1 6 920499328385871537\n1 7 763940148194103497\n2 4 382710956291350101\n3 4 770341659133285654\n3 5 422036395078103425\n3 6 472678770470637382\n5 7 938201660808593198\n"' do
    io = IO.popen('ruby abc396/D.rb', 'w+')
    io.puts("7 10\n1 2 726259430069220777\n1 4 988687862609183408\n1 5 298079271598409137\n1 6 920499328385871537\n1 7 763940148194103497\n2 4 382710956291350101\n3 4 770341659133285654\n3 5 422036395078103425\n3 6 472678770470637382\n5 7 938201660808593198\n")
    io.close_write
    expect(io.readlines.join).to eq("186751192333709144\n")
  end
end
