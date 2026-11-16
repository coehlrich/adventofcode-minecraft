function adventofcode:2015/day17/input
data modify storage adventofcode:2015/day17 containers set value []
function adventofcode:2015/day17/internal/parse
data modify storage adventofcode:2015/day17 result.part1 set value 0
data modify storage adventofcode:2015/day17 result.part2 set value 0
data modify storage adventofcode:2015/day17 min_containers set value 2147483647
bossbar set adventofcode:progress max 8
bossbar set adventofcode:progress value 0
function adventofcode:2015/day17/internal/solve