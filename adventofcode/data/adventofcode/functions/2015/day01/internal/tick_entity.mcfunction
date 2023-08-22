data modify entity @s data.current set string entity @s data.remaining 0 1

setblock ~ ~ ~ air
execute if data entity @s {data: {current: "("}} run tp ~ ~1 ~
execute if data entity @s {data: {current: ")"}} run tp ~ ~-1 ~
execute at @s run setblock ~ ~ ~ white_concrete

data modify entity @s data.call.first set from entity @s data.step
data modify entity @s data.call.second set value 1
data modify entity @s data.call.type set value "+="
execute store result entity @s data.step int 1 run function adventofcode:internal/utils/operation/operation with entity @s data.call
execute store result bossbar adventofcode:progress value run data get entity @s data.step

execute unless data entity @s data.part2 if entity @s[predicate=adventofcode:below_zero] store result entity @s data.part2 int 1 run data get entity @s data.step
data modify entity @s data.remaining set string entity @s data.remaining 1
execute if data entity @s {data: {remaining: ""}} store result entity @s data.part1 int 1 run data get entity @s Pos[1]

execute if data entity @s {data: {remaining: ""}} run tellraw @a "Adventofcode 2015 day 1 answers:"
execute if data entity @s {data: {remaining: ""}} run tellraw @a ["Part 1: ", {"entity": "@s", "nbt": "data.part1"}]
execute if data entity @s {data: {remaining: ""}} run tellraw @a ["Part 2: ", {"entity": "@s", "nbt": "data.part2"}]

execute if data entity @s {data: {remaining: ""}} run kill @s