function adventofcode:2015/day07/input
data remove storage adventofcode:2015/day07 wires
data remove storage adventofcode:2015/day07 result
function adventofcode:2015/day07/internal/read_line

data remove storage adventofcode:2015/day07 calculate
data modify storage adventofcode:2015/day07 calculate.stack set value []
data modify storage adventofcode:2015/day07 calculate.stack append from storage adventofcode:2015/day07 wires.a
data modify storage adventofcode:2015/day07 calculate.stack[0].values set value []
bossbar set adventofcode:progress max 200
bossbar set adventofcode:progress value 1
schedule function adventofcode:2015/day07/internal/tick 1t replace
#tellraw @a {"type": "nbt", "source": "storage", "storage": "adventofcode:2015", "nbt": "day07.wires"}