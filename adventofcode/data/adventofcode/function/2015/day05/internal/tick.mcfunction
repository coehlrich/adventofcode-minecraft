data remove storage adventofcode:2015/day05 current
data modify storage adventofcode:string/to_int_array input set from storage adventofcode:2015/day05 input[0]
function adventofcode:internal/utils/string/to_int_array
data modify storage adventofcode:2015/day05 current.input set from storage adventofcode:string/to_int_array output
data modify storage adventofcode:2015/day05 current.pairs set value []

function adventofcode:2015/day05/internal/check

execute if predicate adventofcode:2015/day05/part1 run data modify storage adventofcode:2015/day05 result.part1 set compute default integer adventofcode:2015/day05/increment_part1
execute if predicate adventofcode:2015/day05/part2 run data modify storage adventofcode:2015/day05 result.part2 set compute default integer adventofcode:2015/day05/increment_part2

data remove storage adventofcode:2015/day05 input[0]

execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day05 input

execute if data storage adventofcode:2015/day05 input[0] run schedule function adventofcode:2015/day05/internal/tick 1t replace

execute unless data storage adventofcode:2015/day05 input[0] run tellraw @a "Adventofcode 2015 day 5 answers:"
execute unless data storage adventofcode:2015/day05 input[0] run tellraw @a ["Part 1: ", {"storage": "adventofcode:2015/day05", "nbt": "result.part1"}]
execute unless data storage adventofcode:2015/day05 input[0] run tellraw @a ["Part 2: ", {"storage": "adventofcode:2015/day05", "nbt": "result.part2"}]