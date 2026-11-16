execute unless data storage adventofcode:2015/day16 result.part1 if function adventofcode:2015/day16/internal/part1 run data modify storage adventofcode:2015/day16 result.part1 set from storage adventofcode:2015/day16 sues[0].sue
execute unless data storage adventofcode:2015/day16 result.part2 if function adventofcode:2015/day16/internal/part2 run data modify storage adventofcode:2015/day16 result.part2 set from storage adventofcode:2015/day16 sues[0].sue
data remove storage adventofcode:2015/day16 sues[0]
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day16 sues
execute unless data storage adventofcode:2015/day16 sues[0] run function adventofcode:2015/day16/internal/finish
execute if data storage adventofcode:2015/day16 sues[0] run schedule function adventofcode:2015/day16/internal/tick 1t replace