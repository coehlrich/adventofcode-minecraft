data modify storage adventofcode:2015/day16 parse.char set string storage adventofcode:2015/day16 parse.line 0 1
data modify storage adventofcode:2015/day16 parse.line set string storage adventofcode:2015/day16 parse.line 1
execute unless data storage adventofcode:2015/day16 parse{char: " "} run function adventofcode:2015/day16/internal/parse/skip_to_space