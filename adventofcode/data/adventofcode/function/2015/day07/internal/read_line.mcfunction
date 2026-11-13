data modify storage adventofcode:2015/day07 read.parse set value {}
data modify storage adventofcode:2015/day07 read.current set from storage adventofcode:2015/day07 input[0]
data modify storage adventofcode:2015/day07 read.parse.inputs set value []

execute if function adventofcode:2015/day07/internal/read/read_input run data modify storage adventofcode:2015/day07 read.current set string storage adventofcode:2015/day07 read.current 1

execute if function adventofcode:2015/day07/internal/read/read_operation run data modify storage adventofcode:2015/day07 read.current set string storage adventofcode:2015/day07 read.current 1

execute unless data storage adventofcode:2015/day07 read.parse.operation run data modify storage adventofcode:2015/day07 read.parse.operation set value 0

execute if function adventofcode:2015/day07/internal/read/read_input run data modify storage adventofcode:2015/day07 read.current set string storage adventofcode:2015/day07 read.current 1

data modify storage adventofcode:2015/day07 read.current set string storage adventofcode:2015/day07 read.current 3

data modify storage adventofcode:2015/day07 read.parse.output set from storage adventofcode:2015/day07 read.current

function adventofcode:2015/day07/internal/read/store with storage adventofcode:2015/day07 read.parse
data remove storage adventofcode:2015/day07 input[0]
execute if data storage adventofcode:2015/day07 input[0] run function adventofcode:2015/day07/internal/read_line