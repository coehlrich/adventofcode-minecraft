data modify storage adventofcode:2015/day19 part1.medicine set from storage adventofcode:2015/day19 medicine
data modify storage adventofcode:2015/day19 part1.copy set value []
function adventofcode:2015/day19/internal/part1/loop
data remove storage adventofcode:2015/day19 part1.replacements[0]
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day19 part1.replacements
execute if data storage adventofcode:2015/day19 part1.replacements[0] run schedule function adventofcode:2015/day19/internal/part1/tick 1t replace
execute unless data storage adventofcode:2015/day19 part1.replacements[0] run schedule function adventofcode:2015/day19/internal/start_part2 1t replace