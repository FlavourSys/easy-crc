require 'easy_crc.so'
require 'easy-crc/version'

module EasyCRC
  def self.crc32(path, seed = 0)
    _crc32(path, seed)
  end
end
