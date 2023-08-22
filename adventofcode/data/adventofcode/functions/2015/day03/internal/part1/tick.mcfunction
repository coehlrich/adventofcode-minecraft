data modify storage adventofcode:2015 day03.internal.current-char set string storage adventofcode:2015 day03.internal.part1.remaining 0 1
execute store result score day03.internal.part1.current-value adventofcode-2015 run data get storage adventofcode:2015 day03.output.part1
execute store result score day03.internal.part1.add adventofcode-2015 as @e[tag=part1-santa] at @s run function adventofcode:2015/day03/internal/movement
scoreboard players operation day03.internal.part1.current-value adventofcode-2015 += day03.internal.part1.add adventofcode-2015
execute store result storage adventofcode:2015 day03.output.part1 int 1 run scoreboard players get day03.internal.part1.current-value adventofcode-2015
data modify storage adventofcode:2015 day03.internal.part1.remaining set string storage adventofcode:2015 day03.internal.part1.remaining 1