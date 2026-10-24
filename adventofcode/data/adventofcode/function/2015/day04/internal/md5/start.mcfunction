data modify storage adventofcode:2015/day04 md5.a0 set value 1732584193
data modify storage adventofcode:2015/day04 md5.b0 set value -271733879
data modify storage adventofcode:2015/day04 md5.c0 set value -1732584194
data modify storage adventofcode:2015/day04 md5.d0 set value 271733878

execute store result storage adventofcode:2015/day04 md5.length int 1 run data get storage adventofcode:2015/day04 md5.input

data modify storage adventofcode:2015/day04 md5.processed_input set from storage adventofcode:2015/day04 md5.input
data modify storage adventofcode:2015/day04 md5.processed_input append value 128
execute store result storage adventofcode:2015/day04 md5.pad_length int 1 run data get storage adventofcode:2015/day04 md5.processed_input
execute unless predicate adventofcode:2015/day04/md5/is_padded run function adventofcode:2015/day04/internal/md5/pad

data modify storage adventofcode:2015/day04 md5.append_length.byte set value 0
function adventofcode:2015/day04/internal/md5/append_length

function adventofcode:2015/day04/internal/md5/add_chunk

data modify storage adventofcode:2015/day04 md5.output set value []
data modify storage adventofcode:2015/day04 md5.current_output.value set from storage adventofcode:2015/day04 md5.a0
data modify storage adventofcode:2015/day04 md5.current_output.index set value 0
function adventofcode:2015/day04/internal/md5/create_output

data modify storage adventofcode:2015/day04 md5.current_output.value set from storage adventofcode:2015/day04 md5.b0
data modify storage adventofcode:2015/day04 md5.current_output.index set value 0
function adventofcode:2015/day04/internal/md5/create_output

data modify storage adventofcode:2015/day04 md5.current_output.value set from storage adventofcode:2015/day04 md5.c0
data modify storage adventofcode:2015/day04 md5.current_output.index set value 0
function adventofcode:2015/day04/internal/md5/create_output

data modify storage adventofcode:2015/day04 md5.current_output.value set from storage adventofcode:2015/day04 md5.d0
data modify storage adventofcode:2015/day04 md5.current_output.index set value 0
function adventofcode:2015/day04/internal/md5/create_output