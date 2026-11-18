function adventofcode:2015/day20/input
data modify storage adventofcode:math/from_number in set from storage adventofcode:2015/day20 input
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day20 required set from storage adventofcode:math/from_number out.number
data modify storage adventofcode:2015/day20 house.number set value 0
data remove storage adventofcode:2015/day20 result
schedule function adventofcode:2015/day20/internal/tick 1t replace