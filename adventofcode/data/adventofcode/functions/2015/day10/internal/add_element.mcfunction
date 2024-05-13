$execute unless data storage adventofcode:2015 day10.elements[-1].$(element) run data modify storage adventofcode:2015 day10.elements[-1].$(element) set value 0
$data modify storage adventofcode:2015 day10.call.first set from storage adventofcode:2015 day10.elements[-1].$(element)
data modify storage adventofcode:2015 day10.call.second set from storage adventofcode:2015 day10.element_count
$execute store result storage adventofcode:2015 day10.elements[-1].$(element) int 1 run function adventofcode:internal/utils/operation/add with storage adventofcode:2015 day10.call
#tellraw @a {"storage": "adventofcode:2015", "nbt": "day10"}