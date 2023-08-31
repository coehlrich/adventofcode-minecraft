execute as @e[tag=sand_spawn] at @s if block ~ ~ ~ minecraft:sand run tag @s remove sand_spawn
execute if entity @e[tag=sand_spawn] run function adventofcode:spawn_sand
execute if entity @e[tag=sand_spawn] as @e[tag=falling_sand] at @s run function adventofcode:falling_sand
execute if entity @e[tag=sand_spawn] as @e[tag=falling_sand] at @s unless block ~-1 ~-1 ~ air unless block ~ ~-1 ~ air unless block ~1 ~-1 ~ air run function adventofcode:place_sand
execute if data storage adventofcode:2015 {day03:{running:1}} run function adventofcode:2015/day03/internal/tick
function adventofcode:2015/day01/internal/tick
function adventofcode:2015/day02/internal/tick

function adventofcode:2015/day06/internal/tick

function adventofcode:2022/day10/internal/tick