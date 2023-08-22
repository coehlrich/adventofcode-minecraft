data modify entity @s data.call.first set from entity @s data.cooldown
data modify entity @s data.call.second set value 1
execute store result entity @s data.cooldown int 1 run function adventofcode:internal/utils/operation/subtraction with entity @s data.call
execute if data entity @s {data: {cooldown: 0}} run function adventofcode:2022/day10/internal/finish_cooldown