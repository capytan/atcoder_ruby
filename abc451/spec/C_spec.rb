# frozen_string_literal: true

RSpec.describe 'abc451/C.rb' do
  it 'test with "5\n1 5\n1 7\n1 8\n2 7\n1 3\n"' do
    io = IO.popen('ruby abc451/C.rb', 'w+')
    io.puts("5\n1 5\n1 7\n1 8\n2 7\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n1\n2\n")
  end

  it 'test with "12\n2 256601193\n1 85138616\n1 202564041\n2 276477192\n1 55551662\n1 170271057\n2 754166580\n1 854388209\n1 772036624\n2 651124113\n1 301137866\n2 290875185\n"' do
    io = IO.popen('ruby abc451/C.rb', 'w+')
    io.puts("12\n2 256601193\n1 85138616\n1 202564041\n2 276477192\n1 55551662\n1 170271057\n2 754166580\n1 854388209\n1 772036624\n2 651124113\n1 301137866\n2 290875185\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n1\n2\n0\n1\n2\n0\n1\n2\n2\n3\n3\n")
  end
end
