execute if data entity @s data.current run function adventofcode:internal/utils/operation/increment {input: "entity @s data.current.position"}
execute unless data entity @s data.current run function adventofcode:2015/day02/internal/parse/set_current

data modify entity @s data.call.input set from entity @s data.current.position
execute store result entity @s data.current.position_plus_one int 1 run function adventofcode:internal/utils/operation/add_one with entity @s data.call
data modify entity @s data.call set value {output: "entity @s data.current.char", input: "entity @s data.current.input"}
data modify entity @s data.call.start set from entity @s data.current.position 
data modify entity @s data.call.end set from entity @s data.current.position_plus_one
function adventofcode:internal/utils/substring with entity @s data.call

execute if data entity @s {data: {current: {char: "x"}}} run function adventofcode:2015/day02/internal/parse/append_current

data modify entity @s data.call.value set from entity @s data.current.position
execute store result entity @s data.call.comparison int 1 run data get entity @s data.current.input
execute store result entity @s data.current.finished int 1 run function adventofcode:internal/utils/compare/equals with entity @s data.call

execute if data entity @s {data: {current: {finished: 1}}} run function adventofcode:2015/day02/internal/parse/finish_line