function adventofcode:2015/day08/input
data modify storage adventofcode:2015/day08 lines set from storage adventofcode:2015/day08 input
data modify storage adventofcode:2015/day08 result.part1 set value 0
data modify storage adventofcode:2015/day08 result.part2 set value 0
execute store result bossbar adventofcode:progress max run data get storage adventofcode:2015/day08 lines
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day08 lines
schedule function adventofcode:2015/day08/internal/tick 1t replace