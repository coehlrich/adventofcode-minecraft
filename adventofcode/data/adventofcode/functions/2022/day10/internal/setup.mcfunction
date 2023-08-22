fill ~ ~ ~ ~39 ~ ~5 black_concrete
tag @s add 2022-day10
data modify entity @s data.input set from storage adventofcode:2022 day10.input
data modify entity @s data.part1 set value 0
data modify entity @s data.cooldown set value 0
data modify entity @s data.register set value 1
data modify entity @s data.cycle set value 0
execute store result bossbar adventofcode:progress max run data get entity @s data.input
bossbar set adventofcode:progress value 0