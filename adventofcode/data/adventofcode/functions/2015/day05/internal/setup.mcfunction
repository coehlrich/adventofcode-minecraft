tag @s add 2015-day05
data modify entity @s data.input set from storage adventofcode:2015 day02.input
data modify entity @s data.part1 set value 0
data modify entity @s data.part2 set value 0
execute store result bossbar adventofcode:progress max run data get entity @s data.input
bossbar set adventofcode:progress value 0