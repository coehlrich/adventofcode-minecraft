execute if data storage adventofcode:2015/day23 parse{line: ""} run return 0
data modify storage adventofcode:2015/day23 parse.offset set string storage adventofcode:2015/day23 parse.line 0 1
execute if data storage adventofcode:2015/day23 parse{offset: "+"} run return 1
execute if data storage adventofcode:2015/day23 parse{offset: "-"} run return 1
data modify storage adventofcode:2015/day23 parse.line set string storage adventofcode:2015/day23 parse.line 2
return 1