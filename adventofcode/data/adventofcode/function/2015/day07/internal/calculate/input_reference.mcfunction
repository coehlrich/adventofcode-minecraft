$execute if data storage adventofcode:2015/day07 calculate.results.$(value) run return run function adventofcode:2015/day07/internal/calculate/read_cache with storage adventofcode:2015/day07 calculate.stack[-1].input
$data modify storage adventofcode:2015/day07 calculate.stack append from storage adventofcode:2015/day07 wires.$(value)
data modify storage adventofcode:2015/day07 calculate.stack[-1].values set value []
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day07 calculate.stack
schedule function adventofcode:2015/day07/internal/tick 1t