function adventofcode:2015/day08/internal/read_char
data modify storage adventofcode:2015/day08 value set value 0
execute if data storage adventofcode:2015/day08 {char: "\""} run data modify storage adventofcode:2015/day08 value set value 1
execute if data storage adventofcode:2015/day08 {char: "\\"} run data modify storage adventofcode:2015/day08 value set value 1

data modify storage adventofcode:2015/day08 result.part2 set compute default integer adventofcode:2015/day08/part2

execute unless data storage adventofcode:2015/day08 {line: ""} run function adventofcode:2015/day08/internal/part2/loop