data modify storage adventofcode:2015/day09 parse.line set from storage adventofcode:2015/day09 input[0]
data modify storage adventofcode:2015/day09 parse.start set string storage adventofcode:2015/day09 parse.line 0 3
function adventofcode:2015/day09/internal/parse/skip_to_space
function adventofcode:2015/day09/internal/parse/skip_to_space
data modify storage adventofcode:2015/day09 parse.end set string storage adventofcode:2015/day09 parse.line 0 3
function adventofcode:2015/day09/internal/parse/skip_to_space
function adventofcode:2015/day09/internal/parse/skip_to_space
data modify storage adventofcode:math/from_number in set from storage adventofcode:2015/day09 parse.line
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day07 parse.distance set from storage adventofcode:math/from_number out.number

function adventofcode:2015/day09/internal/parse/store_distance with storage adventofcode:2015/day09 parse

data remove storage adventofcode:2015/day09 input[0]
execute if data storage adventofcode:2015/day09 input[0] run function adventofcode:2015/day09/internal/parse