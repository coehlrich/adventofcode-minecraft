data modify storage adventofcode:2015/day22 stack[-1].boss.hp set compute default integer adventofcode:2015/day22/effects/apply_poison
execute if predicate adventofcode:2015/day22/win run return run function adventofcode:2015/day22/internal/win
data modify storage adventofcode:2015/day22 stack[-1].effects.poison set compute default integer adventofcode:2015/day22/effects/decrement_poison