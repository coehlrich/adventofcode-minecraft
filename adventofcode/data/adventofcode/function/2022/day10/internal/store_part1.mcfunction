data modify entity @s data.call.first set from entity @s data.cycle
data modify entity @s data.call.second set from entity @s data.register
execute store result entity @s data.call.first int 1 run function adventofcode:internal/utils/operation/multiplication with entity @s data.call

data modify entity @s data.call.second set from entity @s data.part1
execute store result entity @s data.part1 int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call