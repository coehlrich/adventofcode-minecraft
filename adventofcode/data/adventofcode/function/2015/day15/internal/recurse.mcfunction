data modify storage adventofcode:2015/day15 stack append value {}
data modify storage adventofcode:2015/day15 stack[-1].ingredients set from storage adventofcode:2015/day15 stack[-2].ingredients
data modify storage adventofcode:2015/day15 stack[-1].ingredient set from storage adventofcode:2015/day15 stack[-1].ingredients[0]
data remove storage adventofcode:2015/day15 stack[-1].ingredients[0]
data modify storage adventofcode:2015/day15 stack[-1].amount set value 0
function adventofcode:2015/day15/internal/set_amounts
execute if data storage adventofcode:2015/day15 stack[-1].ingredients[0] run function adventofcode:2015/day15/internal/loop
execute unless data storage adventofcode:2015/day15 stack[-1].ingredients[0] run function adventofcode:2015/day15/internal/set_final_ingredient
data remove storage adventofcode:2015/day15 stack[-1]