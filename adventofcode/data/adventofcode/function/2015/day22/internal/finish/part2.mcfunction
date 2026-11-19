data modify storage adventofcode:2015/day22 result.part2 set from storage adventofcode:2015/day22 min_mana
tellraw @a "Adventofcode 2015 day 22 answers:"
tellraw @a ["Part 1: ", {"storage": "adventofcode:2015/day22", "nbt": "result.part1"}]
tellraw @a ["Part 2: ", {"storage": "adventofcode:2015/day22", "nbt": "result.part2"}]