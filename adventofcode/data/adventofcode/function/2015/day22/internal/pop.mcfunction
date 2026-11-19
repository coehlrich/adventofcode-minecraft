#tellraw @a {storage: "adventofcode:2015/day22", nbt: "stack[-1]"}
data remove storage adventofcode:2015/day22 stack[-1]

execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day22 stack

execute unless data storage adventofcode:2015/day22 stack[-1] run return run function adventofcode:2015/day22/internal/finish
data modify storage adventofcode:2015/day22 tick set compute default integer adventofcode:2015/day22/increment_tick
execute if predicate adventofcode:2015/day22/next_tick run return run schedule function adventofcode:2015/day22/internal/choose_spell 1t replace
function adventofcode:2015/day22/internal/choose_spell