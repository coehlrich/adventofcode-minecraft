execute if predicate adventofcode:math/and/on run data modify storage adventofcode:math/and out append value 1
execute unless predicate adventofcode:math/and/on run data modify storage adventofcode:math/and out append value 0
data remove storage adventofcode:math/and in.a[0]
data remove storage adventofcode:math/and in.b[0]

execute if data storage adventofcode:math/and in.a[0] run function adventofcode:internal/utils/math/and/loop