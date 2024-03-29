function adventofcode:2015/day08/internal/read_char
data modify storage adventofcode:2015 day08.value set value 0
execute if data storage adventofcode:2015 day08{char: "\""} run data modify storage adventofcode:2015 day08.value set value 1
execute if data storage adventofcode:2015 day08{char: "\\"} store result storage adventofcode:2015 day08.value int 1 run function adventofcode:2015/day08/internal/part1/back_slash
data modify storage adventofcode:2015 day08.call.first set from storage adventofcode:2015 day08.output.part1
data modify storage adventofcode:2015 day08.call.second set from storage adventofcode:2015 day08.value
execute store result storage adventofcode:2015 day08.output.part1 int 1 run function adventofcode:internal/utils/operation/add with storage adventofcode:2015 day08.call

execute store result storage adventofcode:2015 day08.line_length int 1 run data get storage adventofcode:2015 day08.line
#tellraw @a {"storage": "adventofcode:2015", "nbt": "day08"}
execute unless predicate adventofcode:2015/day08/finished_line run function adventofcode:2015/day08/internal/part1/loop