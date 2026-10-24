data modify storage adventofcode:2015/day04 md5.add_chunk.M set value []
function adventofcode:2015/day04/internal/md5/get_chunk

data modify storage adventofcode:2015/day04 md5.add_chunk.A set from storage adventofcode:2015/day04 md5.a0
data modify storage adventofcode:2015/day04 md5.add_chunk.B set from storage adventofcode:2015/day04 md5.b0
data modify storage adventofcode:2015/day04 md5.add_chunk.C set from storage adventofcode:2015/day04 md5.c0
data modify storage adventofcode:2015/day04 md5.add_chunk.D set from storage adventofcode:2015/day04 md5.d0

data modify storage adventofcode:2015/day04 md5.main_loop.i set value 0
function adventofcode:2015/day04/internal/md5/main_loop

data modify storage adventofcode:2015/day04 md5.a0 set compute default integer adventofcode:2015/day04/md5/result_values/a
data modify storage adventofcode:2015/day04 md5.b0 set compute default integer adventofcode:2015/day04/md5/result_values/b
data modify storage adventofcode:2015/day04 md5.c0 set compute default integer adventofcode:2015/day04/md5/result_values/c
data modify storage adventofcode:2015/day04 md5.d0 set compute default integer adventofcode:2015/day04/md5/result_values/d

execute if data storage adventofcode:2015/day04 md5.processed_input[0] run function adventofcode:2015/day04/internal/md5/add_chunk