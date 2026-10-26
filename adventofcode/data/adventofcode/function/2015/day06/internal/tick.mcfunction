execute as @e[tag=2015-day06-place] at @s run return run function adventofcode:2015/day06/internal/update_area/move_along_x
execute unless data storage adventofcode:2015/day06 input[0] as @e[tag=2015-day06] run return run function adventofcode:2015/day06/internal/finish
data modify storage adventofcode:2015/day06 current set from storage adventofcode:2015/day06 input[0]
function adventofcode:2015/day06/internal/check_instruction_type

data modify storage adventofcode:math/from_number in set from storage adventofcode:2015/day06 current
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day06 instruction.fromx set from storage adventofcode:math/from_number out.number
data modify storage adventofcode:2015/day06 current set from storage adventofcode:math/from_number out.remaining

data modify storage adventofcode:2015/day06 current set string storage adventofcode:2015/day06 current 1

data modify storage adventofcode:math/from_number in set from storage adventofcode:2015/day06 current
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day06 instruction.fromz set from storage adventofcode:math/from_number out.number
data modify storage adventofcode:2015/day06 current set from storage adventofcode:math/from_number out.remaining

data modify storage adventofcode:2015/day06 current set string storage adventofcode:2015/day06 current 9

data modify storage adventofcode:math/from_number in set from storage adventofcode:2015/day06 current
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day06 instruction.tox set from storage adventofcode:math/from_number out.number
data modify storage adventofcode:2015/day06 current set from storage adventofcode:math/from_number out.remaining

data modify storage adventofcode:2015/day06 current set string storage adventofcode:2015/day06 current 1

data modify storage adventofcode:math/from_number in set from storage adventofcode:2015/day06 current
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day06 instruction.toz set from storage adventofcode:math/from_number out.number
data modify storage adventofcode:2015/day06 current set from storage adventofcode:math/from_number out.remaining

data modify storage adventofcode:2015/day06 pos.x set from storage adventofcode:2015/day06 instruction.fromx

execute at @e[tag=2015-day06,limit=1] run function adventofcode:2015/day06/internal/update_area/move with storage adventofcode:2015/day06 instruction
data remove storage adventofcode:2015/day06 input[0]
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day06 input
