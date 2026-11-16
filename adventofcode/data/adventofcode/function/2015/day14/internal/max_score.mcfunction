data modify storage adventofcode:2015/day14 result.part2 set compute default integer adventofcode:2015/day14/max_score
data remove storage adventofcode:2015/day14 reindeer[0]
execute if data storage adventofcode:2015/day14 reindeer[0] run function adventofcode:2015/day14/internal/max_score