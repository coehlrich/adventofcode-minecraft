data modify storage adventofcode:2015/day07 result.part2 set from storage adventofcode:2015/day07 calculate.output

tellraw @a "Adventofcode 2015 day 7 answers:"
tellraw @a ["Part 1: ", {"storage": "adventofcode:2015/day07", "nbt": "result.part1"}]
tellraw @a ["Part 2: ", {"storage": "adventofcode:2015/day07", "nbt": "result.part2"}]