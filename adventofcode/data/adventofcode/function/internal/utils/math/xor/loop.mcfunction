execute if predicate adventofcode:math/xor/on run data modify storage adventofcode:math/xor out append value 1
execute unless predicate adventofcode:math/xor/on run data modify storage adventofcode:math/xor out append value 0
data remove storage adventofcode:math/xor in.a[0]
data remove storage adventofcode:math/xor in.b[0]

execute if data storage adventofcode:math/xor in.a[0] run function adventofcode:internal/utils/math/xor/loop