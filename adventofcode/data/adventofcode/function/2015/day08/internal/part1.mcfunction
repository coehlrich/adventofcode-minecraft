function adventofcode:2015/day08/internal/read_char
data modify storage adventofcode:2015/day08 value set value 0
execute if data storage adventofcode:2015/day08 {char: "\""} run data modify storage adventofcode:2015/day08 value set value 1
execute if data storage adventofcode:2015/day08 {char: "\\"} store result storage adventofcode:2015/day08 value int 1 run function adventofcode:2015/day08/internal/part1/back_slash
data modify storage adventofcode:2015/day08 result.part1 set compute default integer adventofcode:2015/day08/part1

execute unless data storage adventofcode:2015/day08 {line: ""} run function adventofcode:2015/day08/internal/part1