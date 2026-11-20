data remove storage adventofcode:2015/day23 parse.instruction
data modify storage adventofcode:2015/day23 parse.line set from storage adventofcode:2015/day23 input[0]
data modify storage adventofcode:2015/day23 parse.instruction.type set string storage adventofcode:2015/day23 parse.line 0 3
data modify storage adventofcode:2015/day23 parse.line set string storage adventofcode:2015/day23 parse.line 4
function adventofcode:2015/day23/internal/parse/read_register
execute if function adventofcode:2015/day23/internal/parse/skip_to_offset run function adventofcode:2015/day23/internal/parse/read_offset
data modify storage adventofcode:2015/day23 instructions append from storage adventofcode:2015/day23 parse.instruction
data remove storage adventofcode:2015/day23 input[0]
execute if data storage adventofcode:2015/day23 input[0] run function adventofcode:2015/day23/internal/parse