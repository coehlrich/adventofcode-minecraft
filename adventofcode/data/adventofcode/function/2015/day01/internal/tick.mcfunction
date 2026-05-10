data modify storage adventofcode:2015/day01 current set string storage adventofcode:2015/day01 input 0 1

data modify storage adventofcode:math/add in.a set from storage adventofcode:2015/day01 value
execute if data storage adventofcode:2015/day01 {current: "("} run data modify storage adventofcode:math/add in.b set from storage adventofcode:math/constants 1
execute if data storage adventofcode:2015/day01 {current: ")"} run data modify storage adventofcode:math/add in.b set from storage adventofcode:math/constants -1
function adventofcode:internal/utils/math/add
data modify storage adventofcode:2015/day01 value set from storage adventofcode:math/add out

data modify storage adventofcode:math/add in.a set from storage adventofcode:2015/day01 step
data modify storage adventofcode:math/add in.b set from storage adventofcode:math/constants 1
function adventofcode:internal/utils/math/add
data modify storage adventofcode:2015/day01 step set from storage adventofcode:math/add out

execute unless data storage adventofcode:2015/day01 result.part2 if predicate adventofcode:2015/day01/part2 run function adventofcode:2015/day01/internal/part2

data modify storage adventofcode:2015/day01 input set string storage adventofcode:2015/day01 input 1
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day01 input

execute unless data storage adventofcode:2015/day01 {input: ""} run schedule function adventofcode:2015/day01/internal/tick 1t
execute if data storage adventofcode:2015/day01 {input: ""} run function adventofcode:2015/day01/internal/finish