#tellraw @a ["Parsed",{"entity": "@s", "nbt": "data.parsed"}]
$data modify entity @s data.call.first set from entity @s data.parsed[$(first)]
$data modify entity @s data.call.second set from entity @s data.parsed[$(second)]
execute store result entity @s data.side int 2 run function adventofcode:internal/utils/operation/multiplication with entity @s data.call

data modify entity @s data.call.first set from entity @s data.part1
data modify entity @s data.call.second set from entity @s data.side
execute store result entity @s data.part1 int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call

#tellraw @a ["Result",{"entity": "@s", "nbt": "data.part1"}]
#data modify storage adventofcode:global call.log set from entity @s data.side
#say side
#function adventofcode:internal/utils/debug/log with storage adventofcode:global call
#data modify storage adventofcode:global call.log set from entity @s data.part1
#say part1
#function adventofcode:internal/utils/debug/log with storage adventofcode:global call