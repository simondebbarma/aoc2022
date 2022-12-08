require 'set'

string = File.read('a')

_4chars = string.chars.each_cons(4).select { Set[_1, _2, _3, _4].length == 4 }[0]

p solution1 = string.index(_4chars.join) + 4

_14chars = string.chars.each_cons(14).select { Set[*_1].length == 14 }[0]

p solution2 = string.index(_14chars.join) + 14
