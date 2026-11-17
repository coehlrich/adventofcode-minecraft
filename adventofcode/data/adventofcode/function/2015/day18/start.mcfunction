function adventofcode:2015/day18/input
setblock ~ ~20 ~ red_concrete
setblock ~99 ~20 ~ red_concrete
setblock ~ ~20 ~99 red_concrete
setblock ~99 ~20 ~99 red_concrete
bossbar set adventofcode:progress max 100
bossbar set adventofcode:progress value 0
kill @e[tag=2015-day18]
execute align xyz summon minecraft:marker run tag @s add 2015-day18
data modify storage adventofcode:2015/day18 place.line set from storage adventofcode:2015/day18 input[0]
data modify storage adventofcode:2015/day18 frame set value 0
data modify storage adventofcode:2015/day18 x set value 0
data modify storage adventofcode:2015/day18 z set value 0
data modify storage adventofcode:2015/day18 result.part1 set value 0
data modify storage adventofcode:2015/day18 result.part2 set value 0
schedule function adventofcode:2015/day18/internal/place_initial_tick 1t replace