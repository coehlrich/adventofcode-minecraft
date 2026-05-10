function adventofcode:2015/day01/input
data modify storage adventofcode:2015/day01 value set from storage adventofcode:math/constants 0
data modify storage adventofcode:2015/day01 step set from storage adventofcode:math/constants 0
data remove storage adventofcode:2015/day01 result
execute store result bossbar adventofcode:progress max run data get storage adventofcode:2015/day01 input

schedule function adventofcode:2015/day01/internal/tick 1t