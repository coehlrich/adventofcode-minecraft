data modify storage adventofcode:2015/day06 instruction.type set string storage adventofcode:2015/day06 current 0 6
execute if data storage adventofcode:2015/day06 instruction{type: "toggle"} run data modify storage adventofcode:2015/day06 current set string storage adventofcode:2015/day06 current 7
execute if data storage adventofcode:2015/day06 instruction{type: "toggle"} run return 0
data modify storage adventofcode:2015/day06 current set string storage adventofcode:2015/day06 current 5

data modify storage adventofcode:2015/day06 instruction.type set string storage adventofcode:2015/day06 current 0 2
execute if data storage adventofcode:2015/day06 instruction{type: "on"} run data modify storage adventofcode:2015/day06 current set string storage adventofcode:2015/day06 current 3
execute if data storage adventofcode:2015/day06 instruction{type: "on"} run return 0

data modify storage adventofcode:2015/day06 instruction.type set string storage adventofcode:2015/day06 current 0 3
execute if data storage adventofcode:2015/day06 instruction{type: "off"} run data modify storage adventofcode:2015/day06 current set string storage adventofcode:2015/day06 current 4
execute if data storage adventofcode:2015/day06 instruction{type: "off"} run return 0