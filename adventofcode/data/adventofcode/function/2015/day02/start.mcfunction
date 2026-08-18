function adventofcode:2015/day02/input
execute store result bossbar adventofcode:progress max run data get storage adventofcode:2015/day02 input
data modify storage adventofcode:2015/day02 result.part1 set value 0
data modify storage adventofcode:2015/day02 result.part2 set value 0

schedule function adventofcode:2015/day02/internal/tick 1t replace