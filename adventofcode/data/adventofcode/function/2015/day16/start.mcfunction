function adventofcode:2015/day16/input
data modify storage adventofcode:2015/day16 sues set value []
function adventofcode:2015/day16/internal/parse
data remove storage adventofcode:2015/day16 result.part1
data remove storage adventofcode:2015/day16 result.part2
execute store result bossbar adventofcode:progress max run data get storage adventofcode:2015/day16 sues
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day16 sues
schedule function adventofcode:2015/day16/internal/tick 1t replace