execute store result storage adventofcode:2015/day19 result.part1 int 1 run data get storage adventofcode:2015/day19 part1.molecules

data modify storage adventofcode:2015/day19 part2.medicine set from storage adventofcode:2015/day19 medicine
data modify storage adventofcode:2015/day19 result.part2 set value 0
execute store result bossbar adventofcode:progress max run data get storage adventofcode:2015/day19 part2.medicine
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day19 part2.medicine
function adventofcode:2015/day19/internal/part2/tick