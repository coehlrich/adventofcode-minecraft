function adventofcode:2015/day23/input
data modify storage adventofcode:2015/day23 instructions set value []
function adventofcode:2015/day23/internal/parse

execute store result storage adventofcode:2015/day23 instruction_count int 1 run data get storage adventofcode:2015/day23 instructions
data modify storage adventofcode:2015/day23 execute.a set value 0
data modify storage adventofcode:2015/day23 execute.b set value 0
data modify storage adventofcode:2015/day23 execute.pointer set value 0
function adventofcode:2015/day23/internal/execute
data modify storage adventofcode:2015/day23 result.part1 set from storage adventofcode:2015/day23 execute.b

data modify storage adventofcode:2015/day23 execute.a set value 1
data modify storage adventofcode:2015/day23 execute.b set value 0
data modify storage adventofcode:2015/day23 execute.pointer set value 0
function adventofcode:2015/day23/internal/execute
data modify storage adventofcode:2015/day23 result.part2 set from storage adventofcode:2015/day23 execute.b

tellraw @a "Adventofcode 2015 day 23 answers:"
tellraw @a ["Part 1: ", {"storage": "adventofcode:2015/day23", "nbt": "result.part1"}]
tellraw @a ["Part 2: ", {"storage": "adventofcode:2015/day23", "nbt": "result.part2"}]