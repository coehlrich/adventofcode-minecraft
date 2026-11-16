function adventofcode:2015/day15/input
data modify storage adventofcode:2015/day15 ingredients set value []
function adventofcode:2015/day15/internal/parse
data modify storage adventofcode:2015/day15 result.part1 set value 0
data modify storage adventofcode:2015/day15 result.part2 set value 0
bossbar set adventofcode:progress max 100
bossbar set adventofcode:progress value 0
function adventofcode:2015/day15/internal/solve