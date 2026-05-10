execute if predicate adventofcode:math/sub/carry_set run function adventofcode:internal/utils/math/sub/carry

execute unless predicate adventofcode:math/sub/b_set run data modify storage adventofcode:math/sub out prepend from storage adventofcode:math/sub in.a[-1]
execute if predicate adventofcode:math/sub/a_set if predicate adventofcode:math/sub/b_set run data modify storage adventofcode:math/sub out prepend value 0
execute unless predicate adventofcode:math/sub/a_set if predicate adventofcode:math/sub/b_set run data modify storage adventofcode:math/sub out prepend value 1
execute unless predicate adventofcode:math/sub/a_set if predicate adventofcode:math/sub/b_set run data modify storage adventofcode:math/sub carry set value 1

data remove storage adventofcode:math/sub in.a[-1]
data remove storage adventofcode:math/sub in.b[-1]
execute if data storage adventofcode:math/sub in.a[0] run function adventofcode:internal/utils/math/sub/loop