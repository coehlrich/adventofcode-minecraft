data modify storage adventofcode:2015/day17 stack append value {}
data modify storage adventofcode:2015/day17 stack[-1].containers set from storage adventofcode:2015/day17 stack[-2].containers
data modify storage adventofcode:2015/day17 stack[-1].container set from storage adventofcode:2015/day17 stack[-1].containers[0]
data remove storage adventofcode:2015/day17 stack[-1].containers[0]
data modify storage adventofcode:2015/day17 stack[-1].used set from storage adventofcode:2015/day17 stack[-2].used
data modify storage adventofcode:2015/day17 stack[-1].total set from storage adventofcode:2015/day17 stack[-2].total
execute if data storage adventofcode:2015/day17 stack[-1].containers[0] run function adventofcode:2015/day17/internal/recurse
execute unless data storage adventofcode:2015/day17 stack[-1].containers[0] if predicate adventofcode:2015/day17/is_150 run function adventofcode:2015/day17/internal/update_result
data modify storage adventofcode:2015/day17 stack[-1].used set compute default integer adventofcode:2015/day17/set_used
data modify storage adventofcode:2015/day17 stack[-1].total set compute default integer adventofcode:2015/day17/set_total
execute if data storage adventofcode:2015/day17 stack[-1].containers[0] if predicate adventofcode:2015/day17/can_recurse run function adventofcode:2015/day17/internal/recurse
execute unless data storage adventofcode:2015/day17 stack[-1].containers[0] if predicate adventofcode:2015/day17/is_150 run function adventofcode:2015/day17/internal/update_result
data remove storage adventofcode:2015/day17 stack[-1]