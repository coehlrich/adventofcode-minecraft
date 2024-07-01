data modify storage adventofcode:2015 day10.elements append value {}
function #adventofcode:2015/day10/elements
execute store result storage adventofcode:2015 day10.elements_length int 1 run data get storage adventofcode:2015 day10.elements
execute if predicate adventofcode:2015/day10/continue run schedule function adventofcode:2015/day10/internal/tick 1t replace
execute unless predicate adventofcode:2015/day10/continue run function adventofcode:2015/day10/internal/finish
#function adventofcode:2015/day10/internal/elements/bi
#data modify storage adventofcode:2015 day10.current set from storage adventofcode:2015 day10.next