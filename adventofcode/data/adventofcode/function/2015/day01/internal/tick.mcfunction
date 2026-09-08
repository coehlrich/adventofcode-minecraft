data modify storage adventofcode:2015/day01 current set string storage adventofcode:2015/day01 input 0 1

execute if data storage adventofcode:2015/day01 {current: "("} run data modify storage adventofcode:2015/day01 value set compute default integer adventofcode:2015/day01/increment_one
execute if data storage adventofcode:2015/day01 {current: ")"} run data modify storage adventofcode:2015/day01 value set compute default integer adventofcode:2015/day01/decrement_one

data modify storage adventofcode:2015/day01 step set compute default integer adventofcode:2015/day01/increment_step

execute unless data storage adventofcode:2015/day01 result.part2 if predicate adventofcode:2015/day01/part2 run function adventofcode:2015/day01/internal/part2

data modify storage adventofcode:2015/day01 input set string storage adventofcode:2015/day01 input 1
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day01 input

execute unless data storage adventofcode:2015/day01 {input: ""} run schedule function adventofcode:2015/day01/internal/tick 1t
execute if data storage adventofcode:2015/day01 {input: ""} run function adventofcode:2015/day01/internal/finish