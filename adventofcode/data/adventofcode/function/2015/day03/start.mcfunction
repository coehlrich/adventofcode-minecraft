function adventofcode:2015/day03/input
#data modify storage adventofcode:2015 day03.input set value "^v"
#data modify storage adventofcode:2015 day03.input set value "^>v<"
#data modify storage adventofcode:2015 day03.input set value "^v^v^v^v^v"
kill @e[tag=used]
fill ~-200 ~-1 ~-200 ~200 ~-1 ~200 grass_block replace white_concrete
fill ~-200 ~10 ~-200 ~200 ~10 ~200 air replace white_concrete
execute align xyz positioned ~.5 ~-1 ~.5 summon minecraft:marker run tag @s add part1-santa
execute align xyz positioned ~.5 ~10 ~.5 summon minecraft:marker run tag @s add part2-santa
execute align xyz positioned ~.5 ~10 ~.5 summon minecraft:marker run tag @s add part2-robosanta
execute as @e[tag=part1-santa] run tag @s add used
execute as @e[tag=part2-santa] run tag @s add used
execute as @e[tag=part2-robosanta] run tag @s add used
execute as @e[tag=part2-santa] run tag @s add part2-used
execute as @e[tag=part2-robosanta] run tag @s add part2-used
#execute as @e[tag=part1-santa,tag=part2-santa,tag=part2-robosanta] run data merge entity @s {NoGravity:1b}
execute as @e[tag=used] at @s run setblock ~ ~ ~ minecraft:white_concrete
execute store result bossbar adventofcode:progress max run data get storage adventofcode:2015/day03 input
data modify storage adventofcode:2015/day03 part1.remaining set from storage adventofcode:2015/day03 input
data modify storage adventofcode:2015/day03 part2.remaining set from storage adventofcode:2015/day03 input
data modify storage adventofcode:2015/day03 result.part1 set value 1
data modify storage adventofcode:2015/day03 result.part2 set value 1
schedule function adventofcode:2015/day03/internal/tick 1t replace