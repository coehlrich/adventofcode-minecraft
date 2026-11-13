data modify storage adventofcode:math/from_number in set from storage adventofcode:2015/day07 read.current
execute unless function adventofcode:internal/utils/math/from_number run return 0
data modify storage adventofcode:2015/day07 read.parse.inputs append value {type: "direct"}
data modify storage adventofcode:2015/day07 read.parse.inputs[-1].value set from storage adventofcode:math/from_number out.number
data modify storage adventofcode:2015/day07 read.current set from storage adventofcode:math/from_number out.remaining
return 1