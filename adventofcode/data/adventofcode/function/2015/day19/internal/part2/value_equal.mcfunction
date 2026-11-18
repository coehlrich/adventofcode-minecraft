data modify storage adventofcode:2015/day19 part2.check append from storage adventofcode:2015/day19 part2.medicine[0]
data remove storage adventofcode:2015/day19 part2.replacement.value[0]
data remove storage adventofcode:2015/day19 part2.medicine[0]
execute unless data storage adventofcode:2015/day19 part2.replacement.value[0] run function adventofcode:2015/day19/internal/part2/replace
function adventofcode:2015/day19/internal/part2/loop