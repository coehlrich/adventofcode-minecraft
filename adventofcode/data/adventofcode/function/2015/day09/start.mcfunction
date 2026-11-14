function adventofcode:2015/day09/input
data modify storage adventofcode:2015/day09 lines set from storage adventofcode:2015/day09 input
data modify storage adventofcode:2015/day09 locations set value []
data modify storage adventofcode:2015/day09 distances set value {}
function adventofcode:2015/day09/internal/parse

data modify storage adventofcode:2015/day09 result.part1 set value 2147483647
data modify storage adventofcode:2015/day09 result.part2 set value 0
schedule function adventofcode:2015/day09/internal/solve 1t replace