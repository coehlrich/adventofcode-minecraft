data modify storage adventofcode:2015/day18 z set value 0
data modify storage adventofcode:2015/day18 frame set compute default integer adventofcode:2015/day18/increment_frame
clone ~-99 ~ ~-99 ~ ~ ~ ~-99 ~-1 ~-99
clone ~-99 ~21 ~-99 ~ ~21 ~ ~-99 ~20 ~-99
fill ~-99 ~ ~-99 ~ ~ ~ air
fill ~-99 ~21 ~-99 ~ ~21 ~ air
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day18 frame

execute unless predicate adventofcode:2015/day18/finish run data modify storage adventofcode:2015/day18 result.part1 set value 0
execute unless predicate adventofcode:2015/day18/finish run data modify storage adventofcode:2015/day18 result.part2 set value 0
execute unless predicate adventofcode:2015/day18/finish run tp @s ~-99 ~ ~-99
execute unless predicate adventofcode:2015/day18/finish at @s run return run schedule function adventofcode:2015/day18/internal/tick 1t replace

execute if predicate adventofcode:2015/day18/finish run function adventofcode:2015/day18/internal/finish