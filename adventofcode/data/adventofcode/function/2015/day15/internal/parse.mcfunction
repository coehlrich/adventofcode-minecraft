data modify storage adventofcode:2015/day15 parse.line set from storage adventofcode:2015/day15 input[0]
function adventofcode:2015/day15/internal/parse/skip_to_space
function adventofcode:2015/day15/internal/parse/skip_to_space
execute store result storage adventofcode:2015/day15 parse.capacity int 1 run function adventofcode:2015/day15/internal/parse/read_number
function adventofcode:2015/day15/internal/parse/skip_to_space
function adventofcode:2015/day15/internal/parse/skip_to_space
execute store result storage adventofcode:2015/day15 parse.durability int 1 run function adventofcode:2015/day15/internal/parse/read_number
function adventofcode:2015/day15/internal/parse/skip_to_space
function adventofcode:2015/day15/internal/parse/skip_to_space
execute store result storage adventofcode:2015/day15 parse.flavor int 1 run function adventofcode:2015/day15/internal/parse/read_number
function adventofcode:2015/day15/internal/parse/skip_to_space
function adventofcode:2015/day15/internal/parse/skip_to_space
execute store result storage adventofcode:2015/day15 parse.texture int 1 run function adventofcode:2015/day15/internal/parse/read_number
function adventofcode:2015/day15/internal/parse/skip_to_space
function adventofcode:2015/day15/internal/parse/skip_to_space
execute store result storage adventofcode:2015/day15 parse.calories int 1 run function adventofcode:2015/day15/internal/parse/read_number
data modify storage adventofcode:2015/day15 ingredients append from storage adventofcode:2015/day15 parse
data remove storage adventofcode:2015/day15 input[0]
execute if data storage adventofcode:2015/day15 input[0] run function adventofcode:2015/day15/internal/parse