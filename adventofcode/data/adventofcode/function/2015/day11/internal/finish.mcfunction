tellraw @a "Adventofcode 2015 day 11 answers:"
tellraw @a ["Part 1: ", {"storage": "adventofcode:2015", "nbt": "day11.output.part1[].value.character", "separator": ""}]
tellraw @a ["Part 2: ", {"storage": "adventofcode:2015", "nbt": "day11.output.part2[].value.character", "separator": ""}]
kill @e[tag=2015-day11]
#tellraw @a {"storage": "adventofcode:2015", "nbt": "day11.characters"}
return 1