#$forceload add ~$(fromx) ~$(fromz)
#$forceload add ~$(tox) ~$(toz)
$function adventofcode:2015/day06/internal/part1/$(instruction) with entity @s data.call
data modify entity @s data.call.first set from entity @s data.part1
data modify entity @s data.call.second set from entity @s data.remove
execute store result entity @s data.call.first int 1 run function adventofcode:internal/utils/operation/subtraction with entity @s data.call
data modify entity @s data.call.second set from entity @s data.add
execute store result entity @s data.part1 int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call
#$forceload remove ~$(fromx) ~$(fromz)
#$forceload remove ~$(tox) ~$(toz)
#forceload add ~ ~