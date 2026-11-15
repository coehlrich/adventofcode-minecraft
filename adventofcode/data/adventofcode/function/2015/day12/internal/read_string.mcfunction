data modify storage adventofcode:2015/day12 read.test_string set string storage adventofcode:2015/day12 read.remaining_string 0 5
execute unless data storage adventofcode:2015/day12 read.reading_key if data storage adventofcode:2015/day12 read{test_string: "\"red\""} run data modify storage adventofcode:2015/day12 stack[-1].red set value true
function adventofcode:2015/day12/internal/read/read_char
function adventofcode:2015/day12/internal/read_string/loop