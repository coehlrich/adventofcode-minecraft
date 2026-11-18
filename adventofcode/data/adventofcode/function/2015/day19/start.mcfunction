function adventofcode:2015/day19/input
data modify storage adventofcode:2015/day19 replacements set value []
function adventofcode:2015/day19/internal/parse_key_values
data modify storage adventofcode:2015/day19 convert.input set from storage adventofcode:2015/day19 input[1]
function adventofcode:2015/day19/internal/convert_string
data modify storage adventofcode:2015/day19 medicine set from storage adventofcode:2015/day19 convert.output
data modify storage adventofcode:2015/day19 part1.molecules set value []
data modify storage adventofcode:2015/day19 part1.replacements set from storage adventofcode:2015/day19 replacements
execute store result bossbar adventofcode:progress max run data get storage adventofcode:2015/day19 part1.replacements
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day19 part1.replacements
schedule function adventofcode:2015/day19/internal/part1/tick 1t replace