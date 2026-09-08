data modify storage adventofcode:2015/day02 current set from storage adventofcode:2015/day02 input[0]
data remove storage adventofcode:2015/day02 input[0]

data modify storage adventofcode:math/from_number in set from storage adventofcode:2015/day02 current
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day02 l set from storage adventofcode:math/from_number out.number

data modify storage adventofcode:math/from_number in set string storage adventofcode:math/from_number out.remaining 1
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day02 w set from storage adventofcode:math/from_number out.number

data modify storage adventofcode:math/from_number in set string storage adventofcode:math/from_number out.remaining 1
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day02 h set from storage adventofcode:math/from_number out.number

data modify storage adventofcode:2015/day02 result.part1 set compute default integer adventofcode:2015/day02/part1
data modify storage adventofcode:2015/day02 result.part2 set compute default integer adventofcode:2015/day02/part2
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day02 input

execute if data storage adventofcode:2015/day02 input[0] run schedule function adventofcode:2015/day02/internal/tick 1t
execute unless data storage adventofcode:2015/day02 input[0] run function adventofcode:2015/day02/internal/finish