data modify storage adventofcode:2015/day01 current set string storage adventofcode:2015/day01 input 0 1

execute if data storage adventofcode:2015/day01 {current: "("} store result storage adventofcode:2015/day01 value int 1 run number adventofcode:2015/day01/increment_one
execute if data storage adventofcode:2015/day01 {current: ")"} store result storage adventofcode:2015/day01 value int 1 run number adventofcode:2015/day01/decrement_one

execute store result storage adventofcode:2015/day01 step int 1 run number adventofcode:2015/day01/increment_step

execute unless data storage adventofcode:2015/day01 result.part2 if predicate adventofcode:2015/day01/part2 run function adventofcode:2015/day01/internal/part2

data modify storage adventofcode:2015/day01 input set string storage adventofcode:2015/day01 input 1
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day01 input

execute unless data storage adventofcode:2015/day01 {input: ""} run schedule function adventofcode:2015/day01/internal/tick 1t
execute if data storage adventofcode:2015/day01 {input: ""} run function adventofcode:2015/day01/internal/finish