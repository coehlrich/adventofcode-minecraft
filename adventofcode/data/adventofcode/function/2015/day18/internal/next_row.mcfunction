data modify storage adventofcode:2015/day18 x set value 0
data modify storage adventofcode:2015/day18 z set compute default integer adventofcode:2015/day18/increment_z

execute unless predicate adventofcode:2015/day18/next_frame run tp @s ~-99 ~ ~1
execute unless predicate adventofcode:2015/day18/next_frame at @s run return run schedule function adventofcode:2015/day18/internal/tick 1t replace

execute if predicate adventofcode:2015/day18/next_frame run function adventofcode:2015/day18/internal/next_frame