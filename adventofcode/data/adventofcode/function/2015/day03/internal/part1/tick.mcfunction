data modify storage adventofcode:2015/day03 current-char set string storage adventofcode:2015/day03 part1.remaining 0 1
execute store result storage adventofcode:2015/day03 add int 1 as @e[tag=part1-santa] at @s run function adventofcode:2015/day03/internal/movement
data modify storage adventofcode:2015/day03 result.part1 set compute default integer adventofcode:2015/day03/part1
data modify storage adventofcode:2015/day03 part1.remaining set string storage adventofcode:2015/day03 part1.remaining 1