data modify storage adventofcode:2015/day19 part1.molecule.value set from storage adventofcode:2015/day19 part1.copy
data modify storage adventofcode:2015/day19 part1.molecule.value append from storage adventofcode:2015/day19 part1.replacements[0].value[]
data modify storage adventofcode:2015/day19 part1.copy append from storage adventofcode:2015/day19 part1.medicine[0]
data remove storage adventofcode:2015/day19 part1.medicine[0]
data modify storage adventofcode:2015/day19 part1.molecule.value append from storage adventofcode:2015/day19 part1.medicine[]
function adventofcode:2015/day19/internal/part1/store with storage adventofcode:2015/day19 part1.molecule

function adventofcode:2015/day19/internal/part1/loop