data modify storage adventofcode:string/to_int current.char set string storage adventofcode:2015/day07 read.current 0 1
execute store result storage adventofcode:2015/day07 read.char int 1 run function adventofcode:internal/utils/string/to_int
execute unless predicate adventofcode:2015/day07/read/is_lower_case_letter run return 0
data modify storage adventofcode:2015/day07 read.parse.inputs append value {type: "reference"}
data modify storage adventofcode:2015/day07 read.char set string storage adventofcode:2015/day07 read.current 1 2

execute if data storage adventofcode:2015/day07 read{char: " "} run data modify storage adventofcode:2015/day07 read.parse.inputs[-1].value set string storage adventofcode:2015/day07 read.current 0 1
execute if data storage adventofcode:2015/day07 read{char: " "} run data modify storage adventofcode:2015/day07 read.current set string storage adventofcode:2015/day07 read.current 1

execute unless data storage adventofcode:2015/day07 read{char: " "} run data modify storage adventofcode:2015/day07 read.parse.inputs[-1].value set string storage adventofcode:2015/day07 read.current 0 2
execute unless data storage adventofcode:2015/day07 read{char: " "} run data modify storage adventofcode:2015/day07 read.current set string storage adventofcode:2015/day07 read.current 2

return 1