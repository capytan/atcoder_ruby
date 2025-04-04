# frozen_string_literal: true

RSpec.describe 'test' do
  it 'test with "ABC\n4\n0 1\n1 1\n1 3\n1 6\n"' do
    io = IO.popen('ruby abc242/D.rb', 'w+')
    io.puts("ABC\n4\n0 1\n1 1\n1 3\n1 6\n")
    io.close_write
    expect(io.readlines.join).to eq("A\nB\nC\nB\n")
  end

  it 'test with "CBBAACCCCC\n5\n57530144230160008 659279164847814847\n29622990657296329 861239705300265164\n509705228051901259 994708708957785197\n176678501072691541 655134104344481648\n827291290937314275 407121144297426665\n"' do
    io = IO.popen('ruby abc242/D.rb', 'w+')
    io.puts("CBBAACCCCC\n5\n57530144230160008 659279164847814847\n29622990657296329 861239705300265164\n509705228051901259 994708708957785197\n176678501072691541 655134104344481648\n827291290937314275 407121144297426665\n")
    io.close_write
    expect(io.readlines.join).to eq("A\nA\nC\nA\nA\n")
  end
end
