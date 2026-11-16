data modify storage adventofcode:2015/day14 reindeer[0].distance set compute default integer adventofcode:2015/day14/add_distance
data modify storage adventofcode:2015/day14 result.part1 set compute default integer adventofcode:2015/day14/max_distance
data modify storage adventofcode:2015/day14 next_reindeer append from storage adventofcode:2015/day14 reindeer[0]
data remove storage adventofcode:2015/day14 reindeer[0]
execute if data storage adventofcode:2015/day14 reindeer[0] run function adventofcode:2015/day14/internal/tick_reindeer