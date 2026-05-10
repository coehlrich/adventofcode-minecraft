data modify storage adventofcode:math/div in.b append value 0
data remove storage adventofcode:math/div in.b[0]

function adventofcode:internal/utils/math/div/loop

data modify storage adventofcode:math/div in.b prepend value 0
data remove storage adventofcode:math/div in.b[-1]