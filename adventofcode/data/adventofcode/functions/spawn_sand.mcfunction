execute as @e[tag=sand_spawn] at @s align xyz summon block_display run tag @s add falling_sand
execute as @e[tag=falling_sand] run data merge entity @s {block_state:{Name:"minecraft:sand"}}
scoreboard players add part2 sand 1