function adventofcode:2015/day04/input
data modify storage adventofcode:2015/day04 convert_input.input set from storage adventofcode:2015/day04 input
data modify storage adventofcode:2015/day04 base set value []
function adventofcode:2015/day04/internal/convert_input

data remove storage adventofcode:2015/day04 result
data modify storage adventofcode:2015/day04 value set value 0
schedule function adventofcode:2015/day04/internal/tick 1t replace