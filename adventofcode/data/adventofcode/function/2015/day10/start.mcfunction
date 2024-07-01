#https://en.wikipedia.org/wiki/Look-and-say_sequence#Cosmological_decay
function adventofcode:2015/day10/input
data modify storage adventofcode:2015 day10.sequence set from storage adventofcode:2015 day10.input[0]
data modify storage adventofcode:2015 day10.elements set value []
data modify storage adventofcode:2015 day10.ticks set value 0
function adventofcode:2015/day10/internal/read_input
function adventofcode:2015/day10/internal/tick