data modify storage adventofcode:2015/day10 next_elements set value {}
function #adventofcode:2015/day10/element_decay
data modify storage adventofcode:2015/day10 elements set from storage adventofcode:2015/day10 next_elements
data modify storage adventofcode:2015/day10 tick set compute default integer adventofcode:2015/day10/increment_tick

execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day10 tick

execute if predicate adventofcode:2015/day10/part1 run data modify storage adventofcode:2015/day10 result.part1 set compute default integer adventofcode:2015/day10/total_length
execute if predicate adventofcode:2015/day10/part2 run data modify storage adventofcode:2015/day10 result.part2 set compute default integer adventofcode:2015/day10/total_length
execute unless predicate adventofcode:2015/day10/part2 run schedule function adventofcode:2015/day10/internal/tick 1t replace
execute if predicate adventofcode:2015/day10/part2 run function adventofcode:2015/day10/internal/finish