execute unless data storage adventofcode:2015/day15 stack[-2] store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day15 stack[-1].amount
function adventofcode:2015/day15/internal/recurse
data modify storage adventofcode:2015/day15 stack[-1].amount set compute default integer adventofcode:2015/day15/increase_amount
function adventofcode:2015/day15/internal/set_amounts
execute if data storage adventofcode:2015/day15 stack[-2] if predicate adventofcode:2015/day15/can_continue run function adventofcode:2015/day15/internal/loop
execute unless data storage adventofcode:2015/day15 stack[-2] if predicate adventofcode:2015/day15/can_continue run schedule function adventofcode:2015/day15/internal/loop 1t replace
execute unless data storage adventofcode:2015/day15 stack[-2] unless predicate adventofcode:2015/day15/can_continue run function adventofcode:2015/day15/internal/finish