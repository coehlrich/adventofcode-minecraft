data modify storage adventofcode:2015/day04 md5.main_loop.F set compute default integer adventofcode:2015/day04/md5/f_initial
data modify storage adventofcode:2015/day04 md5.main_loop.g set compute default integer adventofcode:2015/day04/md5/g

data modify storage adventofcode:2015/day04 md5.main_loop.F set compute default integer adventofcode:2015/day04/md5/f_add

data modify storage adventofcode:2015/day04 md5.add_chunk.A set from storage adventofcode:2015/day04 md5.add_chunk.D
data modify storage adventofcode:2015/day04 md5.add_chunk.D set from storage adventofcode:2015/day04 md5.add_chunk.C
data modify storage adventofcode:2015/day04 md5.add_chunk.C set from storage adventofcode:2015/day04 md5.add_chunk.B
data modify storage adventofcode:2015/day04 md5.add_chunk.B set compute default integer adventofcode:2015/day04/md5/b

data modify storage adventofcode:2015/day04 md5.main_loop.i set compute default integer adventofcode:2015/day04/md5/increment_i
execute if predicate adventofcode:2015/day04/md5/continue_main_loop run function adventofcode:2015/day04/internal/md5/main_loop