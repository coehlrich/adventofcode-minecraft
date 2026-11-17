setblock ~ ~ ~ black_concrete
execute unless block ~ ~20 ~ red_concrete run setblock ~ ~21 ~ black_concrete

execute positioned ~ ~-1 ~ if predicate adventofcode:2015/day18/on run setblock ~ ~1 ~ white_concrete
execute positioned ~ ~-1 ~ if predicate adventofcode:2015/day18/on run data modify storage adventofcode:2015/day18 result.part1 set compute default integer adventofcode:2015/day18/increment_part1
execute if block ~ ~20 ~ red_concrete run setblock ~ ~21 ~ red_concrete
execute if block ~ ~20 ~ red_concrete run data modify storage adventofcode:2015/day18 result.part2 set compute default integer adventofcode:2015/day18/increment_part2
execute positioned ~ ~20 ~ unless block ~ ~ ~ red_concrete if predicate adventofcode:2015/day18/on run setblock ~ ~1 ~ white_concrete
execute positioned ~ ~20 ~ unless block ~ ~ ~ red_concrete if predicate adventofcode:2015/day18/on run data modify storage adventofcode:2015/day18 result.part2 set compute default integer adventofcode:2015/day18/increment_part2

data modify storage adventofcode:2015/day18 x set compute default integer adventofcode:2015/day18/increment_x

execute unless predicate adventofcode:2015/day18/next_row run tp @s ~1 ~ ~
execute unless predicate adventofcode:2015/day18/next_row at @s run return run function adventofcode:2015/day18/internal/entity_tick

execute if predicate adventofcode:2015/day18/next_row run function adventofcode:2015/day18/internal/next_row