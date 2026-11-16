function adventofcode:2015/day17/internal/recurse
execute store result bossbar adventofcode:progress value run compute default integer adventofcode:2015/day17/bossbar
execute if predicate adventofcode:2015/day17/bits/bit_0 if predicate adventofcode:2015/day17/bits/bit_1 if predicate adventofcode:2015/day17/bits/bit_2 run return run function adventofcode:2015/day17/internal/finish
function adventofcode:2015/day17/internal/first_three/update_first_three
data modify storage adventofcode:2015/day17 stack[2].used set compute default integer adventofcode:2015/day17/initial_used
data modify storage adventofcode:2015/day17 stack[2].total set compute default integer adventofcode:2015/day17/initial_total
schedule function adventofcode:2015/day17/internal/tick 1t