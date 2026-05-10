execute if predicate adventofcode:math/add/bit_sum_bit_one run data modify storage adventofcode:math/add bit_sum[0] set value 1
execute if predicate adventofcode:math/add/bit_sum_bit_one run return run data modify storage adventofcode:math/add bit_sum[1] set value 0
data modify storage adventofcode:math/add bit_sum[1] set value 1