data modify storage adventofcode:2015/day19 part2.replaced set value []
execute unless data storage adventofcode:2015/day19 part2.replacements[0] run data modify storage adventofcode:2015/day19 part2.replacements set from storage adventofcode:2015/day19 replacements
data modify storage adventofcode:2015/day19 part2.replacement set from storage adventofcode:2015/day19 part2.replacements[0]
data modify storage adventofcode:2015/day19 part2.check set value []
function adventofcode:2015/day19/internal/part2/loop
data modify storage adventofcode:2015/day19 part2.medicine set from storage adventofcode:2015/day19 part2.replaced
data remove storage adventofcode:2015/day19 part2.replacements[0]
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day19 part2.medicine
execute unless data storage adventofcode:2015/day19 part2.medicine[1] run return run function adventofcode:2015/day19/internal/finish
schedule function adventofcode:2015/day19/internal/part2/tick 1t replace