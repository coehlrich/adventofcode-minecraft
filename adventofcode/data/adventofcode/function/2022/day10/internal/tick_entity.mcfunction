execute unless data entity @s {data: {cooldown: 0}} run function adventofcode:2022/day10/internal/tick_cooldown

data modify entity @s data.call set value {second: 40}
data modify entity @s data.call.first set from entity @s data.cycle
execute store result entity @s data.column int 1 run function adventofcode:internal/utils/operation/modulo with entity @s data.call

data modify entity @s data.call set value {second: 40}
data modify entity @s data.call.first set from entity @s data.cycle
execute store result entity @s data.row int 1 run function adventofcode:internal/utils/operation/division with entity @s data.call

data modify entity @s data.call.register set from entity @s data.register
function adventofcode:2022/day10/internal/place_filter with entity @s data.call

data modify entity @s data.call.column set from entity @s data.column
data modify entity @s data.call.row set from entity @s data.row
function adventofcode:2022/day10/internal/place_on with entity @s data.call

function adventofcode:internal/utils/operation/increment {input: "entity @s data.cycle"}

data modify entity @s data.call set value {second: 40}
data modify entity @s data.call.first set from entity @s data.cycle
execute store result entity @s data.column int 1 run function adventofcode:internal/utils/operation/modulo with entity @s data.call

data modify entity @s data.call set value {comparison: 20}
data modify entity @s data.call.value set from entity @s data.column
execute store result entity @s data.result int 1 run function adventofcode:internal/utils/compare/equals with entity @s data.call
execute if data entity @s {data: {result: 1}} run function adventofcode:2022/day10/internal/store_part1

fill ~-5 ~10 ~ ~44 ~10 ~5 air

execute unless data entity @s {data: {cooldown: 0}} run return 0

function adventofcode:internal/utils/string/split {split: " ", input: "entity @s data.input[0]", output: "entity @s data.args"}
data remove entity @s data.input[0]

data modify entity @s data.call set value {prefix: "adventofcode:2022/day10/internal/instructions"}
data modify entity @s data.call.instruction set from entity @s data.args[0]
function adventofcode:internal/utils/functions/call with entity @s data.call

execute store result entity @s data.call.input int 1 run bossbar get adventofcode:progress value
execute store result bossbar adventofcode:progress value run function adventofcode:internal/utils/operation/add_one with entity @s data.call

execute unless data entity @s data.input[0] run function adventofcode:2022/day10/internal/finish