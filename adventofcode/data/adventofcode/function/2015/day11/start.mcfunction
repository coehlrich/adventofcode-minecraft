function adventofcode:2015/day11/input
data remove storage adventofcode:2015/day11 result
data modify storage adventofcode:2015/day11 characters set value []
function adventofcode:2015/day11/internal/setup/split_into_array
title @a actionbar {"storage": "adventofcode:2015/day11", "nbt": "characters[].value.character", "separator": "", interpret: true}
schedule function adventofcode:2015/day11/internal/tick 1t replace