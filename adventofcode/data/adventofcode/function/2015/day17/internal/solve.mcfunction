data modify storage adventofcode:2015/day17 stack set value [{},{},{}]
data modify storage adventofcode:2015/day17 stack[0].containers set from storage adventofcode:2015/day17 containers
data modify storage adventofcode:2015/day17 stack[0].container set from storage adventofcode:2015/day17 stack[0].containers[0]
data remove storage adventofcode:2015/day17 stack[0].containers[0]
data modify storage adventofcode:2015/day17 stack[0].used set value 0
data modify storage adventofcode:2015/day17 stack[0].total set value 0
data modify storage adventofcode:2015/day17 stack[0].on set value 0

data modify storage adventofcode:2015/day17 stack[1].containers set from storage adventofcode:2015/day17 stack[0].containers
data modify storage adventofcode:2015/day17 stack[1].container set from storage adventofcode:2015/day17 stack[1].containers[0]
data remove storage adventofcode:2015/day17 stack[1].containers[0]
data modify storage adventofcode:2015/day17 stack[1].used set value 0
data modify storage adventofcode:2015/day17 stack[1].total set value 0
data modify storage adventofcode:2015/day17 stack[1].on set value 0

data modify storage adventofcode:2015/day17 stack[2].containers set from storage adventofcode:2015/day17 stack[1].containers
data modify storage adventofcode:2015/day17 stack[2].container set from storage adventofcode:2015/day17 stack[2].containers[0]
data remove storage adventofcode:2015/day17 stack[2].containers[0]
data modify storage adventofcode:2015/day17 stack[2].used set value 0
data modify storage adventofcode:2015/day17 stack[2].total set value 0
data modify storage adventofcode:2015/day17 stack[2].on set value 0

schedule function adventofcode:2015/day17/internal/tick 1t replace