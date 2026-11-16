function adventofcode:2015/day14/input
data modify storage adventofcode:2015/day14 reindeer set value []
function adventofcode:2015/day14/internal/parse
data modify storage adventofcode:2015/day14 tick set value 0
bossbar set adventofcode:progress max 2502
bossbar set adventofcode:progress value 0
schedule function adventofcode:2015/day14/internal/tick 1t replace