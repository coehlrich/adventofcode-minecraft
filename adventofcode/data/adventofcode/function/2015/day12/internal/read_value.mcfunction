function adventofcode:2015/day12/internal/read/peek_char
execute if data storage adventofcode:2015/day12 read{current_char: "{"} run return run function adventofcode:2015/day12/internal/read_object
execute if data storage adventofcode:2015/day12 read{current_char: "["} run return run function adventofcode:2015/day12/internal/read_array
execute if data storage adventofcode:2015/day12 read{current_char: "\""} run return run function adventofcode:2015/day12/internal/read_string
return run function adventofcode:2015/day12/internal/read_int