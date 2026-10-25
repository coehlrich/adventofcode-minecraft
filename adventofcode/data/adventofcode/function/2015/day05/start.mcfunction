function adventofcode:2015/day05/input
data modify storage adventofcode:2015/day05 result.part1 set value 0
data modify storage adventofcode:2015/day05 result.part2 set value 0
execute store result bossbar adventofcode:progress max run data get storage adventofcode:2015/day05 input
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day05 input

schedule function adventofcode:2015/day05/internal/tick 1t replace