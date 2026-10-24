data modify storage adventofcode:2015/day04 value set compute default integer adventofcode:2015/day04/increment_value
data modify storage adventofcode:2015/day04 value_chars.result set value []
data modify storage adventofcode:2015/day04 value_chars.current set from storage adventofcode:2015/day04 value
function adventofcode:2015/day04/internal/convert_value_to_chars
data modify storage adventofcode:2015/day04 current_input set from storage adventofcode:2015/day04 base
data modify storage adventofcode:2015/day04 current_input append from storage adventofcode:2015/day04 value_chars.result[]
data modify storage adventofcode:2015/day04 md5.input set from storage adventofcode:2015/day04 current_input
function adventofcode:2015/day04/internal/md5/start
execute unless data storage adventofcode:2015/day04 result.part1 if predicate adventofcode:2015/day04/part1 run data modify storage adventofcode:2015/day04 result.part1 set from storage adventofcode:2015/day04 value
execute unless data storage adventofcode:2015/day04 result.part2 if predicate adventofcode:2015/day04/part2 run data modify storage adventofcode:2015/day04 result.part2 set from storage adventofcode:2015/day04 value
#tellraw @a {"storage": "adventofcode:2015", "nbt": "day04.value"}