data modify storage adventofcode:2015/day15 stack set value [{}]
data modify storage adventofcode:2015/day15 stack[0].ingredients set from storage adventofcode:2015/day15 ingredients
data modify storage adventofcode:2015/day15 stack[0].ingredient set from storage adventofcode:2015/day15 stack[0].ingredients[0]
data remove storage adventofcode:2015/day15 stack[0].ingredients[0]
data modify storage adventofcode:2015/day15 stack[0].amount set value 0
function adventofcode:2015/day15/internal/set_amounts
schedule function adventofcode:2015/day15/internal/loop 1t replace