# frozen_string_literal: true

RSpec.describe 'test' do
  it 'test with "5\n3\nAXA\n6\nABCZAZ\n30\nQWERTYUIOPASDFGHJKLZXCVBNMQWER\n28\nJVIISNEOXHSNEAAENSHXOENSIIVJ\n31\nKVOHEEMSOZZASHENDIGOJRTJVMVSDWW\n"' do
    io = IO.popen('ruby abc242/E.rb', 'w+')
    io.puts("5\n3\nAXA\n6\nABCZAZ\n30\nQWERTYUIOPASDFGHJKLZXCVBNMQWER\n28\nJVIISNEOXHSNEAAENSHXOENSIIVJ\n31\nKVOHEEMSOZZASHENDIGOJRTJVMVSDWW\n")
    io.close_write
    expect(io.readlines.join).to eq("24\n29\n212370247\n36523399\n231364016\n")
  end
end
