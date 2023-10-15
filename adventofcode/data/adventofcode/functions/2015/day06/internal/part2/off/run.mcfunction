execute positioned over motion_blocking run setblock ~ ~-1 ~ minecraft:air
data modify entity @e[tag=2015-day06,limit=1] data.call.first set from entity @e[tag=2015-day06,limit=1] data.part2
data modify entity @e[tag=2015-day06,limit=1] data.call.second set value 1
execute store result entity @e[tag=2015-day06,limit=1] data.part2 int 1 run function adventofcode:internal/utils/operation/subtraction with entity @e[tag=2015-day06,limit=1] data.call