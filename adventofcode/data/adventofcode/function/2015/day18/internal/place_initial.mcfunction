execute if data storage adventofcode:2015/day18 place{line: ""} run data modify storage adventofcode:2015/day18 place.line set from storage adventofcode:2015/day18 input[0]
data modify storage adventofcode:2015/day18 place.char set string storage adventofcode:2015/day18 place.line 0 1
data modify storage adventofcode:2015/day18 place.line set string storage adventofcode:2015/day18 place.line 1
execute if data storage adventofcode:2015/day18 place{char: "#"} run setblock ~ ~-1 ~ white_concrete
execute if data storage adventofcode:2015/day18 place{char: "."} run setblock ~ ~-1 ~ black_concrete
execute unless block ~ ~20 ~ red_concrete if data storage adventofcode:2015/day18 place{char: "#"} run setblock ~ ~20 ~ white_concrete
execute unless block ~ ~20 ~ red_concrete if data storage adventofcode:2015/day18 place{char: "."} run setblock ~ ~20 ~ black_concrete

execute if data storage adventofcode:2015/day18 place{line: ""} run data remove storage adventofcode:2015/day18 input[0]

execute if data storage adventofcode:2015/day18 place{line: ""} if data storage adventofcode:2015/day18 input[0] run tp @s ~-99 ~ ~1
execute if data storage adventofcode:2015/day18 place{line: ""} if data storage adventofcode:2015/day18 input[0] run schedule function adventofcode:2015/day18/internal/place_initial_tick 1t replace

execute if data storage adventofcode:2015/day18 place{line: ""} unless data storage adventofcode:2015/day18 input[0] run tp @s ~-99 ~ ~-99
execute if data storage adventofcode:2015/day18 place{line: ""} unless data storage adventofcode:2015/day18 input[0] run schedule function adventofcode:2015/day18/internal/tick 1t replace

execute unless data storage adventofcode:2015/day18 place{line: ""} run tp @s ~1 ~ ~
execute unless data storage adventofcode:2015/day18 place{line: ""} at @s run function adventofcode:2015/day18/internal/place_initial