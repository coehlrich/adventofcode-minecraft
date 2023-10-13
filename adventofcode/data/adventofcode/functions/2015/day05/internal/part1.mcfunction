data modify entity @s data.call.first set value 0
execute store result entity @s data.call.second int 1 run function adventofcode:internal/utils/string/contains {input: "entity @s data.current_input", contains: "a"}
execute store result entity @s data.call.first int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call
execute store result entity @s data.call.second int 1 run function adventofcode:internal/utils/string/contains {input: "entity @s data.current_input", contains: "e"}
execute store result entity @s data.call.first int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call
execute store result entity @s data.call.second int 1 run function adventofcode:internal/utils/string/contains {input: "entity @s data.current_input", contains: "i"}
execute store result entity @s data.call.first int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call
execute store result entity @s data.call.second int 1 run function adventofcode:internal/utils/string/contains {input: "entity @s data.current_input", contains: "o"}
execute store result entity @s data.call.first int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call
execute store result entity @s data.call.second int 1 run function adventofcode:internal/utils/string/contains {input: "entity @s data.current_input", contains: "u"}

execute store result entity @s data.current_vowels int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call
tellraw @a {"entity": "@s", "nbt": "data.current_vowels"}
return 1