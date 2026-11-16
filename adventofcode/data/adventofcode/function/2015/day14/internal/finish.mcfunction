data modify storage adventofcode:2015/day14 result.part2 set value 0
function adventofcode:2015/day14/internal/max_score

tellraw @a "Adventofcode 2015 day 14 answers:"
tellraw @a ["Part 1: ", {"storage": "adventofcode:2015/day14", "nbt": "result.part1"}]
tellraw @a ["Part 2: ", {"storage": "adventofcode:2015/day14", "nbt": "result.part2"}]