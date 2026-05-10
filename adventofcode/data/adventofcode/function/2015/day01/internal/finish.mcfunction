data modify storage adventofcode:math/to_number in set from storage adventofcode:2015/day01 value
function adventofcode:internal/utils/math/to_number
data modify storage adventofcode:2015/day01 result.part1 set from storage adventofcode:math/to_number out

tellraw @a "Adventofcode 2015 day 1 answers:"
tellraw @a [{"text": "Part 1: "}, {"storage": "adventofcode:2015/day01", "nbt": "result.part1", "interpret": true}]
tellraw @a [{"text": "Part 2: "}, {"storage": "adventofcode:2015/day01", "nbt": "result.part2", "interpret": true}]