data modify storage adventofcode:2015/day07 read.operation set string storage adventofcode:2015/day07 read.current 0 2
execute if data storage adventofcode:2015/day07 read{operation: "OR"} run data modify storage adventofcode:2015/day07 read.parse.operation set value 1
execute if data storage adventofcode:2015/day07 read{operation: "OR"} run data modify storage adventofcode:2015/day07 read.current set string storage adventofcode:2015/day07 read.current 2
execute if data storage adventofcode:2015/day07 read{operation: "OR"} run return 1

data modify storage adventofcode:2015/day07 read.operation set string storage adventofcode:2015/day07 read.current 0 3
execute if data storage adventofcode:2015/day07 read{operation: "AND"} run data modify storage adventofcode:2015/day07 read.parse.operation set value 2
execute if data storage adventofcode:2015/day07 read{operation: "AND"} run data modify storage adventofcode:2015/day07 read.current set string storage adventofcode:2015/day07 read.current 3
execute if data storage adventofcode:2015/day07 read{operation: "AND"} run return 1

execute if data storage adventofcode:2015/day07 read{operation: "NOT"} run data modify storage adventofcode:2015/day07 read.parse.operation set value 3
execute if data storage adventofcode:2015/day07 read{operation: "NOT"} run data modify storage adventofcode:2015/day07 read.current set string storage adventofcode:2015/day07 read.current 3
execute if data storage adventofcode:2015/day07 read{operation: "NOT"} run return 1

data modify storage adventofcode:2015/day07 read.operation set string storage adventofcode:2015/day07 read.current 0 6
execute if data storage adventofcode:2015/day07 read{operation: "LSHIFT"} run data modify storage adventofcode:2015/day07 read.parse.operation set value 4
execute if data storage adventofcode:2015/day07 read{operation: "LSHIFT"} run data modify storage adventofcode:2015/day07 read.current set string storage adventofcode:2015/day07 read.current 6
execute if data storage adventofcode:2015/day07 read{operation: "LSHIFT"} run return 1

execute if data storage adventofcode:2015/day07 read{operation: "RSHIFT"} run data modify storage adventofcode:2015/day07 read.parse.operation set value 5
execute if data storage adventofcode:2015/day07 read{operation: "RSHIFT"} run data modify storage adventofcode:2015/day07 read.current set string storage adventofcode:2015/day07 read.current 6
execute if data storage adventofcode:2015/day07 read{operation: "RSHIFT"} run return 1