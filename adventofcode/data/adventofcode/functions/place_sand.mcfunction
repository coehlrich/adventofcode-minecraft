execute if block ~ ~-1 ~ grass_block run tag @e[tag=sand_spawn] add part2
execute unless entity @e[tag=part2] run scoreboard players add part1 sand 1
setblock ~ ~ ~ sand
kill @s
execute as @e[tag=falling_sand,sort=nearest] at @s unless block ~-1 ~-1 ~ air unless block ~ ~-1 ~ air unless block ~1 ~-1 ~ air run function adventofcode:place_sand