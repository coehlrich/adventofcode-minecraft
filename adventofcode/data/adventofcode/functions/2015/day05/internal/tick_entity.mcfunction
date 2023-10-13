data modify entity @s data.current_input set from entity @s data.input[0]

execute if function adventofcode:2015/day05/internal/part1 run function adventofcode:internal/utils/operation/increment {input: "entity @s data.part1"}
execute if function adventofcode:2015/day05/internal/part2 run function adventofcode:internal/utils/operation/increment {input: "entity @s data.part2"}

data remove entity @s data.input[0]

execute store result entity @s data.call.input int 1 run bossbar get adventofcode:progress value
execute store result bossbar adventofcode:progress value run function adventofcode:internal/utils/operation/add_one with entity @s data.call

execute unless data entity @s data.input[0] run tellraw @a "Adventofcode 2015 day 5 answers:"
execute unless data entity @s data.input[0] run tellraw @a ["Part 1: ", {"entity": "@s", "nbt": "data.part1"}]
execute unless data entity @s data.input[0] run tellraw @a ["Part 2: ", {"entity": "@s", "nbt": "data.part2"}]
execute unless data entity @s data.input[0] run kill @s