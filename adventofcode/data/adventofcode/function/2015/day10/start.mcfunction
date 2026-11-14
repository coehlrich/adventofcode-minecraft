#https://en.wikipedia.org/wiki/Look-and-say_sequence#Cosmological_decay
function adventofcode:2015/day10/input
data modify storage adventofcode:2015/day10 tick set value 0
bossbar set adventofcode:progress max 50
bossbar set adventofcode:progress value 0
function adventofcode:2015/day10/internal/read_input
schedule function adventofcode:2015/day10/internal/tick 1t replace