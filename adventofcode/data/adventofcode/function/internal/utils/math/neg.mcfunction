data modify storage adventofcode:math/not in set from storage adventofcode:math/neg in
function adventofcode:internal/utils/math/not

data modify storage adventofcode:math/add in.a set from storage adventofcode:math/not out
data modify storage adventofcode:math/add in.b set from storage adventofcode:math/constants 1
function adventofcode:internal/utils/math/add
data modify storage adventofcode:math/neg out set from storage adventofcode:math/add out