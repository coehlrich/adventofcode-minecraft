data modify storage adventofcode:2015/day16 parse.line set from storage adventofcode:2015/day16 input[0]

function adventofcode:2015/day16/internal/parse/skip_to_space

execute store result storage adventofcode:2015/day16 parse.sue int 1 run function adventofcode:2015/day16/internal/parse/read_number

function adventofcode:2015/day16/internal/parse/skip_to_space

function adventofcode:2015/day16/internal/read_entry

data modify storage adventofcode:2015/day16 sues append from storage adventofcode:2015/day16 parse
data remove storage adventofcode:2015/day16 parse
data remove storage adventofcode:2015/day16 input[0]
execute if data storage adventofcode:2015/day16 input[0] run function adventofcode:2015/day16/internal/parse