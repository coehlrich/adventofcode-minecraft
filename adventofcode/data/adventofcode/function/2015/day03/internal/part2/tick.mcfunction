data modify storage adventofcode:2015/day03 current-char set string storage adventofcode:2015/day03 part2.remaining 0 1
execute store result storage adventofcode:2015/day03 add int 1 as @e[tag=part2-santa] at @s run function adventofcode:2015/day03/internal/movement
data modify storage adventofcode:2015/day03 current-char set string storage adventofcode:2015/day03 part2.remaining 1 2
execute store result storage adventofcode:2015/day03 add2 int 1 as @e[tag=part2-robosanta] at @s run function adventofcode:2015/day03/internal/movement
data modify storage adventofcode:2015/day03 result.part2 set compute default integer adventofcode:2015/day03/part2
data modify storage adventofcode:2015/day03 part2.remaining set string storage adventofcode:2015/day03 part2.remaining 2