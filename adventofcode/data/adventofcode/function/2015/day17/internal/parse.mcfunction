data modify storage adventofcode:math/from_number in set from storage adventofcode:2015/day17 input[0]
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day17 containers append from storage adventofcode:math/from_number out.number
data remove storage adventofcode:2015/day17 input[0]
execute if data storage adventofcode:2015/day17 input[0] run function adventofcode:2015/day17/internal/parse