data modify storage adventofcode:2015/day12 read.reading_key set value 1
function adventofcode:2015/day12/internal/read_string
data remove storage adventofcode:2015/day12 read.reading_key
function adventofcode:2015/day12/internal/read/read_char

function adventofcode:2015/day12/internal/read_value
function adventofcode:2015/day12/internal/read/read_char
execute if data storage adventofcode:2015/day12 read{current_char: ","} run return run function adventofcode:2015/day12/internal/read_object/loop
execute if data storage adventofcode:2015/day12 read{current_char: "}"} run return 0