execute if predicate adventofcode:math/not/on run data modify storage adventofcode:math/not out append value 1
execute unless predicate adventofcode:math/not/on run data modify storage adventofcode:math/not out append value 0
data remove storage adventofcode:math/not in[0]
execute if data storage adventofcode:math/not in[0] run function adventofcode:internal/utils/math/not/loop