data modify storage adventofcode:2015 day09.line set from storage adventofcode:2015 day09.lines[0]
function adventofcode:2015/day09/internal/parse

data remove storage adventofcode:2015 day09.lines[0]
execute if data storage adventofcode:2015 day09.lines[0] run schedule function adventofcode:2015/day09/internal/tick 1t replace
execute unless data storage adventofcode:2015 day09.lines[0] run schedule function adventofcode:2015/day09/internal/solve 1t replace