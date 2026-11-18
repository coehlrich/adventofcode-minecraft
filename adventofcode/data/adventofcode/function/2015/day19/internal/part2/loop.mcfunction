execute if predicate adventofcode:2015/day19/part2/is_value_equal run return run function adventofcode:2015/day19/internal/part2/value_equal
execute if data storage adventofcode:2015/day19 part2.check[0] run return run function adventofcode:2015/day19/internal/part2/reset_replace
data modify storage adventofcode:2015/day19 part2.replaced append from storage adventofcode:2015/day19 part2.medicine[0]
data remove storage adventofcode:2015/day19 part2.medicine[0]
execute if data storage adventofcode:2015/day19 part2.medicine[0] run function adventofcode:2015/day19/internal/part2/loop