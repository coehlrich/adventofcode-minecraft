tag @s add 2015-day01
data modify entity @s data.remaining set from storage adventofcode:2015 day01.input
data modify entity @s data.step set value 0
execute summon block_display run tag @s add 2015-day01-block
execute as @e[tag=2015-day01-block] run data merge entity @s {block_state:{Name:"white_concrete"}}
execute store result bossbar adventofcode:progress max run data get entity @s data.remaining