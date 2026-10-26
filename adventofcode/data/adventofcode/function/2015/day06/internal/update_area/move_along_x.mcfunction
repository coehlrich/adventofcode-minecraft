tag @s add 2015-day06-place
data modify storage adventofcode:2015/day06 pos.z set from storage adventofcode:2015/day06 instruction.fromz
function adventofcode:2015/day06/internal/update_area/update_z
data modify storage adventofcode:2015/day06 pos.x set compute default integer adventofcode:2015/day06/increment_x
execute if predicate adventofcode:2015/day06/continue_x run tp @s ~1 ~ ~
schedule function adventofcode:2015/day06/internal/tick 1t replace
execute unless predicate adventofcode:2015/day06/continue_x run kill @s