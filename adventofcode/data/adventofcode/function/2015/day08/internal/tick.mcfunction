data modify storage adventofcode:2015 day08.line set from storage adventofcode:2015 day08.lines[0]
function adventofcode:2015/day08/internal/part1

data modify storage adventofcode:2015 day08.line set from storage adventofcode:2015 day08.lines[0]
function adventofcode:2015/day08/internal/part2

data remove storage adventofcode:2015 day08.lines[0]
execute if data storage adventofcode:2015 day08.lines[0] run schedule function adventofcode:2015/day08/internal/tick 1t replace
execute unless data storage adventofcode:2015 day08.lines[0] run function adventofcode:2015/day08/internal/finish