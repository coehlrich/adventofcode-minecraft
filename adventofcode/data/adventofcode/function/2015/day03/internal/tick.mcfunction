execute unless data storage adventofcode:2015/day03 part1{remaining: ""} run function adventofcode:2015/day03/internal/part1/tick
execute if data storage adventofcode:2015/day03 part1{remaining: ""} run kill @e[tag=part1-santa]
execute unless data storage adventofcode:2015/day03 part2{remaining: ""} run function adventofcode:2015/day03/internal/part2/tick
execute if data storage adventofcode:2015/day03 part2{remaining: ""} run kill @e[tag=part2-used]
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day03 part1.remaining
execute unless entity @e[tag=used] run tellraw @a "Adventofcode 2015 day 3 answers:"
execute unless entity @e[tag=used] run tellraw @a ["Part 1: ", {"storage": "adventofcode:2015/day03", "nbt":"result.part1"}]
execute unless entity @e[tag=used] run tellraw @a ["Part 2: ", {"storage": "adventofcode:2015/day03", "nbt":"result.part2"}]
execute if entity @e[tag=used] run schedule function adventofcode:2015/day03/internal/tick 1t