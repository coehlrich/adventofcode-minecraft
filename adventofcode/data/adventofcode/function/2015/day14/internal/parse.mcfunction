data modify storage adventofcode:2015/day14 parse.line set from storage adventofcode:2015/day14 input[0]
function adventofcode:2015/day14/internal/parse/skip_to_space
function adventofcode:2015/day14/internal/parse/skip_to_space
function adventofcode:2015/day14/internal/parse/skip_to_space
execute store result storage adventofcode:2015/day14 parse.speed int 1 run function adventofcode:2015/day14/internal/parse/read_number
function adventofcode:2015/day14/internal/parse/skip_to_space
function adventofcode:2015/day14/internal/parse/skip_to_space
function adventofcode:2015/day14/internal/parse/skip_to_space
execute store result storage adventofcode:2015/day14 parse.speed_time int 1 run function adventofcode:2015/day14/internal/parse/read_number
function adventofcode:2015/day14/internal/parse/skip_to_space
function adventofcode:2015/day14/internal/parse/skip_to_space
function adventofcode:2015/day14/internal/parse/skip_to_space
function adventofcode:2015/day14/internal/parse/skip_to_space
function adventofcode:2015/day14/internal/parse/skip_to_space
function adventofcode:2015/day14/internal/parse/skip_to_space
function adventofcode:2015/day14/internal/parse/skip_to_space
execute store result storage adventofcode:2015/day14 parse.rest_time int 1 run function adventofcode:2015/day14/internal/parse/read_number
data modify storage adventofcode:2015/day14 reindeer append from storage adventofcode:2015/day14 parse
data remove storage adventofcode:2015/day14 input[0]
execute if data storage adventofcode:2015/day14 input[0] run function adventofcode:2015/day14/internal/parse