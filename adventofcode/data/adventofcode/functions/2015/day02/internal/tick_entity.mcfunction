function adventofcode:internal/utils/string/split {split: "x", input: "entity @s data.input[0]", output: "entity @s data.parsed"}
data remove entity @s data.input[0]
data modify entity @s data.measurements set value [0, 0, 0]

data modify entity @s data.call.num set from entity @s data.parsed[0]
execute store result entity @s data.measurements[0] int 1 run function adventofcode:internal/utils/parse_int with entity @s data.call

data modify entity @s data.call.num set from entity @s data.parsed[1]
execute store result entity @s data.measurements[1] int 1 run function adventofcode:internal/utils/parse_int with entity @s data.call

data modify entity @s data.call.num set from entity @s data.parsed[2]
execute store result entity @s data.measurements[2] int 1 run function adventofcode:internal/utils/parse_int with entity @s data.call
data modify entity @s data.parsed set from entity @s data.measurements
function adventofcode:internal/utils/array/sort {array: "entity @s data.parsed"}
#function adventofcode:internal/utils/loops/foreach {input: "entity @s data.parsed", callback: "adventofcode:2015/day02/internal/parse_measurement"}

#part 1
function adventofcode:2015/day02/internal/add_side_wrapping {first: 0, second: 1}
function adventofcode:2015/day02/internal/add_side_wrapping {first: 1, second: 2}
function adventofcode:2015/day02/internal/add_side_wrapping {first: 0, second: 2}

data modify entity @s data.call.first set from entity @s data.parsed[0]
data modify entity @s data.call.second set from entity @s data.parsed[1]
execute store result entity @s data.call.second int 1 run function adventofcode:internal/utils/operation/multiplication with entity @s data.call
data modify entity @s data.call.first set from entity @s data.part1
execute store result entity @s data.part1 int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call

#part 2
data modify entity @s data.call.first set from entity @s data.parsed[0]
data modify entity @s data.call.second set from entity @s data.parsed[1]
execute store result entity @s data.call.second int 2 run function adventofcode:internal/utils/operation/add with entity @s data.call
data modify entity @s data.call.first set from entity @s data.part2
execute store result entity @s data.part2 int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call
#tellraw @a {"nbt": "data.part2", "entity": "@s"}

data modify entity @s data.call.x set from entity @s data.parsed[0]
data modify entity @s data.call.y set from entity @s data.parsed[1]
data modify entity @s data.call.z set from entity @s data.parsed[2]
execute store result entity @s data.call.second int 1 run function adventofcode:internal/utils/fill/size with entity @s data.call
data modify entity @s data.call.first set from entity @s data.part2
execute store result entity @s data.part2 int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call
#tellraw @a {"nbt": "data.part2", "entity": "@s"}

execute store result entity @s data.call.input int 1 run bossbar get adventofcode:progress value
execute store result bossbar adventofcode:progress value run function adventofcode:internal/utils/operation/add_one with entity @s data.call
execute unless data entity @s data.input[0] run function adventofcode:2015/day02/internal/finish