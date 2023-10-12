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

execute unless data entity @s data.input[0] run function adventofcode:2015/day06/internal/finish