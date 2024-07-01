data modify entity @s data.call.first set from entity @s data.register
data modify entity @s data.call.second set from entity @s data.modify
execute store result entity @s data.register int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call
data modify entity @s data.modify set value 0