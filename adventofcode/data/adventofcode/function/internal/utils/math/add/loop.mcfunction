data modify storage adventofcode:math/add bit_sum set value [0, 0]
execute if predicate adventofcode:math/add/a_set run function adventofcode:internal/utils/math/add/increment
execute if predicate adventofcode:math/add/b_set run function adventofcode:internal/utils/math/add/increment
execute if predicate adventofcode:math/add/carry_set run function adventofcode:internal/utils/math/add/increment
data modify storage adventofcode:math/add carry set from storage adventofcode:math/add bit_sum[0]
data modify storage adventofcode:math/add out prepend from storage adventofcode:math/add bit_sum[1]
data remove storage adventofcode:math/add in.a[-1]
data remove storage adventofcode:math/add in.b[-1]
execute if data storage adventofcode:math/add in.a[0] run function adventofcode:internal/utils/math/add/loop