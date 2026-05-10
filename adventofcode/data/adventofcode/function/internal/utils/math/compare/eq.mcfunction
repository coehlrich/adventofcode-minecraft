execute if predicate adventofcode:math/compare/eq/exit run return 0
data remove storage adventofcode:math/compare/eq in.a[0]
data remove storage adventofcode:math/compare/eq in.b[0]
execute unless data storage adventofcode:math/compare/eq in.a[0] run return 1
return run function adventofcode:internal/utils/math/compare/eq