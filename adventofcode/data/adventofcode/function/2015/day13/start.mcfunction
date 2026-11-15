function adventofcode:2015/day13/input
data modify storage adventofcode:2015/day13 lines set from storage adventofcode:2015/day13 input
data modify storage adventofcode:2015/day13 people set value []
data modify storage adventofcode:2015/day13 happiness set value {}
function adventofcode:2015/day13/internal/parse

data modify storage adventofcode:2015/day13 result.part1 set value 0
data modify storage adventofcode:2015/day13 result.part2 set value 0
schedule function adventofcode:2015/day13/internal/solve 1t replace