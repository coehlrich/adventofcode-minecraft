execute if predicate adventofcode:2015/day05/is_pair_repeated run return 1
data remove storage adventofcode:2015/day05 current.check_pairs[0]
execute if data storage adventofcode:2015/day05 current.check_pairs[0] run return run function adventofcode:2015/day05/internal/pair_repeated
execute unless data storage adventofcode:2015/day05 current.check_pairs[0] run return 0