data modify storage adventofcode:2015/day08 value set value 2
data modify storage adventofcode:2015/day08 result.part2 set compute default integer adventofcode:2015/day08/part2

execute unless data storage adventofcode:2015/day08 {line: ""} run function adventofcode:2015/day08/internal/part2/loop