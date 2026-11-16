data modify storage adventofcode:2015/day14 next_reindeer set value []
data modify storage adventofcode:2015/day14 result.part1 set value 0
function adventofcode:2015/day14/internal/tick_reindeer
data modify storage adventofcode:2015/day14 reindeer set from storage adventofcode:2015/day14 next_reindeer

data modify storage adventofcode:2015/day14 next_reindeer set value []
function adventofcode:2015/day14/internal/update_score
data modify storage adventofcode:2015/day14 reindeer set from storage adventofcode:2015/day14 next_reindeer

data modify storage adventofcode:2015/day14 tick set compute default integer adventofcode:2015/day14/increment_tick
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day14 tick
execute if predicate adventofcode:2015/day14/can_continue run schedule function adventofcode:2015/day14/internal/tick 1t replace
execute unless predicate adventofcode:2015/day14/can_continue run function adventofcode:2015/day14/internal/finish