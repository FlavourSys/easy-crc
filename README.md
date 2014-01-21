# EasyCRC

This gem calculates CRC32 checksums from files using ANSI C file operations. It does this without locking Ruby's global interpreter lock.

# Usage

```irb
irb(main):001:0> require 'easy-crc'
=> true
irb(main):003:0> EasyCRC.crc32 '/bin/true'
=> 2768046636
```

# License

EasyCRC is licensed under the MIT license, see the LICENSE file for details.
