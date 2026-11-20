data modify storage adventofcode:2015/day23 parse.register set string storage adventofcode:2015/day23 parse.line 0 1
execute unless data storage adventofcode:2015/day23 parse{register: "a"} unless data storage adventofcode:2015/day23 parse{register: "b"} run return 0
data modify storage adventofcode:2015/day23 parse.instruction.register set from storage adventofcode:2015/day23 parse.register
data modify storage adventofcode:2015/day23 parse.line set string storage adventofcode:2015/day23 parse.line 1