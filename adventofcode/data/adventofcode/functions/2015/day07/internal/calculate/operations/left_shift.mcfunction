#tellraw @a {"storage": "adventofcode:2015", "nbt": "day07.calculate.using_wires[-1]"}
data modify storage adventofcode:2015 day07.calculate.value set from storage adventofcode:2015 day07.calculate.using_wires[-1].input
function adventofcode:2015/day07/internal/calculate/value/lookup
data modify storage adventofcode:2015 day07.calculate.using_wires[-1].result set from storage adventofcode:2015 day07.calculate.result
data modify storage adventofcode:2015 day07.calculate.using_wires[-1].count set value 0
execute unless predicate adventofcode:2015/day07/calculate/shift_finished run function adventofcode:2015/day07/internal/calculate/operations/left_shift/loop