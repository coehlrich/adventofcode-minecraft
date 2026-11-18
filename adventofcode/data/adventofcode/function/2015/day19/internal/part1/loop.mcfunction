execute if predicate adventofcode:2015/day19/part1/is_key_equal run return run function adventofcode:2015/day19/internal/part1/replacement
data modify storage adventofcode:2015/day19 part1.copy append from storage adventofcode:2015/day19 part1.medicine[0]
data remove storage adventofcode:2015/day19 part1.medicine[0]
execute if data storage adventofcode:2015/day19 part1.medicine[0] run function adventofcode:2015/day19/internal/part1/loop