#tellraw @a {"storage": "adventofcode:2015", "nbt": "day07.calculate.using_wires[-1]"}
data modify storage adventofcode:2015 day07.calculate.value set from storage adventofcode:2015 day07.calculate.using_wires[-1].input
function adventofcode:2015/day07/internal/calculate/value/lookup
data modify storage adventofcode:2015 day07.calculate.using_wires[-1].input.result set from storage adventofcode:2015 day07.calculate.result

data modify storage adventofcode:2015 day07.calculate.using_wires[-1].result set value []
function adventofcode:2015/day07/internal/calculate/operations/not/loop