execute if predicate adventofcode:math/compare/gte/exit run return run data get storage adventofcode:math/compare/gte in.b[0]
data remove storage adventofcode:math/compare/gte in.a[0]
data remove storage adventofcode:math/compare/gte in.b[0]
execute unless data storage adventofcode:math/compare/gte in.a[0] run return 0
return run function adventofcode:internal/utils/math/compare/gte/loop