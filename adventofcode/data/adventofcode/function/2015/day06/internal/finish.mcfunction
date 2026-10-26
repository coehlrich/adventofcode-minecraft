forceload remove all

tellraw @a "Adventofcode 2015 day 6 answers:"
tellraw @a ["Part 1: ", {"storage": "adventofcode:2015/day06", "nbt": "result.part1"}]
tellraw @a ["Part 2: ", {"storage": "adventofcode:2015/day06", "nbt": "result.part2"}]

kill @s
return 1