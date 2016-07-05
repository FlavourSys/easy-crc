require 'spec_helper'
require 'fileutils'
require 'zlib'

describe EasyCRC do
  context 'without seed' do
    it 'works' do
      crc1 = EasyCRC.crc32(__FILE__)
      crc2 = File.open(__FILE__) { |f| Zlib.crc32 f.read }
      expect(crc1).to eq(crc2)
    end
  end

  context 'with seed' do
    it 'works' do
      seed = EasyCRC.crc32(File.expand_path('../spec_helper.rb', __FILE__))
      crc1 = EasyCRC.crc32(__FILE__, seed)
      seed = File.open(File.expand_path('../spec_helper.rb', __FILE__)) { |f| Zlib.crc32(f.read) }
      crc2 = File.open(__FILE__) { |f| Zlib.crc32(f.read, seed) }
      expect(crc1).to eq(crc2)
    end
  end
end
