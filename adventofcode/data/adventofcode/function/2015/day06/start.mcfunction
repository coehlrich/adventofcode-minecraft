function adventofcode:2015/day06/input
data modify storage adventofcode:2015/day06 result.part1 set value 0
data modify storage adventofcode:2015/day06 result.part2 set value 0
forceload add ~0 ~0 ~240 ~240
forceload add ~0 ~257 ~240 ~497
forceload add ~0 ~514 ~240 ~754
forceload add ~0 ~771 ~240 ~999
forceload add ~257 ~0 ~497 ~240
forceload add ~257 ~257 ~497 ~497
forceload add ~257 ~514 ~497 ~754
forceload add ~257 ~771 ~497 ~999
forceload add ~514 ~0 ~754 ~240
forceload add ~514 ~257 ~754 ~497
forceload add ~514 ~514 ~754 ~754
forceload add ~514 ~771 ~754 ~999
forceload add ~771 ~0 ~999 ~240
forceload add ~771 ~257 ~999 ~497
forceload add ~771 ~514 ~999 ~754
forceload add ~771 ~771 ~999 ~999
#forceload add ~ ~
#forceload add ~999 ~999
fill ~ ~101 ~ ~999 ~149 ~999 air
fill ~ ~-1 ~ ~999 ~-1 ~999 minecraft:black_concrete
fill ~ ~100 ~ ~999 ~100 ~999 minecraft:black_concrete
#forceload remove ~999 ~999
execute store result bossbar adventofcode:progress max run data get storage adventofcode:2015/day06 input
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day06 input
execute align xyz summon minecraft:marker run tag @s add 2015-day06

schedule function adventofcode:2015/day06/internal/tick 1t