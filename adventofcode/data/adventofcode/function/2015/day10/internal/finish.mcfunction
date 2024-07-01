tellraw @a "Adventofcode 2015 day 10 answers:"
data modify storage adventofcode:2015 day10.check_elements set from storage adventofcode:2015 day10.elements[40]
execute store result storage adventofcode:2015 day10.output.part1 int 1 run function #adventofcode:2015/day10/element_counts

data modify storage adventofcode:2015 day10.check_elements set from storage adventofcode:2015 day10.elements[50]
execute store result storage adventofcode:2015 day10.output.part2 int 1 run function #adventofcode:2015/day10/element_counts
tellraw @a ["Part 1: ", {"storage": "adventofcode:2015", "nbt": "day10.output.part1"}]
tellraw @a ["Part 2: ", {"storage": "adventofcode:2015", "nbt": "day10.output.part2"}]