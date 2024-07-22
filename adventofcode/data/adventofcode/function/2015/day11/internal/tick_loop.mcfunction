data modify storage adventofcode:2015 day11.loop_index set value 0
execute if function adventofcode:2015/day11/internal/tick run return 0
schedule function adventofcode:2015/day11/internal/tick_loop 1t