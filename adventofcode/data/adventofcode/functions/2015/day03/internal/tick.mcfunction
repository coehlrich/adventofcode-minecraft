execute store result score day03.internal.part1.length adventofcode-2015 run data get storage adventofcode:2015 day03.internal.part1.remaining
execute if score day03.internal.part1.length adventofcode-2015 matches 1.. run function adventofcode:2015/day03/internal/part1/tick
execute if score day03.internal.part1.length adventofcode-2015 matches 0 run kill @e[tag=part1-santa]
execute store result score day03.internal.part2.length adventofcode-2015 run data get storage adventofcode:2015 day03.internal.part2.remaining
execute if score day03.internal.part2.length adventofcode-2015 matches 1.. run function adventofcode:2015/day03/internal/part2/tick
execute if score day03.internal.part2.length adventofcode-2015 matches 0 run kill @e[tag=part2-used]
execute unless entity @e[tag=used] run tellraw @a "Adventofcode 2015 day 3 answers:"
execute unless entity @e[tag=used] run tellraw @a ["Part 1: ", {"storage": "adventofcode:2015", "nbt":"day03.output.part1"}]
execute unless entity @e[tag=used] run tellraw @a ["Part 2: ", {"storage": "adventofcode:2015", "nbt":"day03.output.part2"}]
execute unless entity @e[tag=used] run data modify storage adventofcode:2015 day03.running set value 0