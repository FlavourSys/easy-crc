require 'spec_helper'
require 'fileutils'
require 'zlib'

describe EasyCRC do
  it 'works' do
    crc1 = EasyCRC.crc32(__FILE__)
    crc2 = File.open(__FILE__) { |f| Zlib.crc32 f.read }
    expect(crc1).to eq(crc2)
  end
end
