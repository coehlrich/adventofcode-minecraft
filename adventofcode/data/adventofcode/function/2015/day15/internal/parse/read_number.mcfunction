data modify storage adventofcode:math/from_number in set from storage adventofcode:2015/day15 parse.line
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day15 parse.line set from storage adventofcode:math/from_number out.remaining
return run data get storage adventofcode:math/from_number out.number