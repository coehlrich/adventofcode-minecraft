data modify storage adventofcode:2015 day03.internal.current-char set string storage adventofcode:2015 day03.internal.part2.remaining 0 1
execute store result score day03.internal.part2.current-value adventofcode-2015 run data get storage adventofcode:2015 day03.output.part2
execute store result score day03.internal.part2.add adventofcode-2015 as @e[tag=part2-santa] at @s run function adventofcode:2015/day03/internal/movement
data modify storage adventofcode:2015 day03.internal.current-char set string storage adventofcode:2015 day03.internal.part2.remaining 1 2
scoreboard players operation day03.internal.part2.current-value adventofcode-2015 += day03.internal.part2.add adventofcode-2015
execute store result score day03.internal.part2.add adventofcode-2015 as @e[tag=part2-robosanta] at @s run function adventofcode:2015/day03/internal/movement
scoreboard players operation day03.internal.part2.current-value adventofcode-2015 += day03.internal.part2.add adventofcode-2015
execute store result storage adventofcode:2015 day03.output.part2 int 1 run scoreboard players get day03.internal.part2.current-value adventofcode-2015
data modify storage adventofcode:2015 day03.internal.part2.remaining set string storage adventofcode:2015 day03.internal.part2.remaining 2