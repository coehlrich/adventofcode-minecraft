tag @s add 2015-day06
data modify entity @s data.input set from storage adventofcode:2015 day06.input
data modify entity @s data.part1 set value 0
forceload add ~ ~
forceload add ~999 ~999
fill ~ ~ ~ ~999 ~ ~999 minecraft:black_concrete
forceload remove ~ ~
forceload remove ~999 ~999
execute store result bossbar adventofcode:progress max run data get entity @s data.input
bossbar set adventofcode:progress value 0