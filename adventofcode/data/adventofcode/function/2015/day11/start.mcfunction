function adventofcode:2015/day11/input
data remove storage adventofcode:2015 day11.finished_setup
data modify storage adventofcode:2015 day11.string set from storage adventofcode:2015 day11.input
data remove storage adventofcode:2015 day11.output
data modify storage adventofcode:2015 day11.characters set value []
function adventofcode:2015/day11/internal/setup
data modify storage adventofcode:2015 day11.finished_setup set value 1
schedule function adventofcode:2015/day11/internal/tick_loop 1t replace