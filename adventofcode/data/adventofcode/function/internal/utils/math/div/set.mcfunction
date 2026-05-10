data modify storage adventofcode:math/div out.div[-1] set value 1

data modify storage adventofcode:math/sub in.a set from storage adventofcode:math/div in.a
data modify storage adventofcode:math/sub in.b set from storage adventofcode:math/div in.b
function adventofcode:internal/utils/math/sub
data modify storage adventofcode:math/div in.a set from storage adventofcode:math/sub out
#tellraw @a "Success"