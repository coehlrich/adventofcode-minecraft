# Make sure all the command blocks are done executing
execute unless data entity @s data{ticks: 20} run function adventofcode:internal/utils/operation/increment {input: "entity @s data.ticks"}
execute unless data entity @s data{ticks: 20} run return 0
data modify entity @s data.ticks set value 0

#tellraw @a {"entity": "@s", "nbt": "data.part2"}

execute unless data entity @s data.input[0] run return run function adventofcode:2015/day06/internal/finish

function adventofcode:internal/utils/string/split {split: " ", input: "entity @s data.input[0]", output: "entity @s data.split"}
data remove entity @s data.input[0]
data modify entity @s data.instruction set from entity @s data.split[0]
execute if data entity @s {data: {instruction: "turn"}} run data remove entity @s data.split[0]
execute if data entity @s {data: {instruction: "turn"}} run data modify entity @s data.instruction set from entity @s data.split[0]

function adventofcode:internal/utils/string/split {split: ",", input: "entity @s data.split[1]", output: "entity @s data.start"}
function adventofcode:internal/utils/string/split {split: ",", input: "entity @s data.split[3]", output: "entity @s data.end"}

data modify entity @s data.call.fromx set from entity @s data.start[0]
data modify entity @s data.call.fromz set from entity @s data.start[1]
data modify entity @s data.call.tox set from entity @s data.end[0]
data modify entity @s data.call.toz set from entity @s data.end[1]
data modify entity @s data.call.instruction set from entity @s data.instruction
function adventofcode:2015/day06/internal/part1/run_instruction with entity @s data.call
function adventofcode:2015/day06/internal/part2/run_instruction with entity @s data.call

execute store result entity @s data.call.input int 1 run bossbar get adventofcode:progress value
execute store result bossbar adventofcode:progress value run function adventofcode:internal/utils/operation/add_one with entity @s data.call