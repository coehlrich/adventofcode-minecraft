data modify storage adventofcode:2015/day07 calculate.output set compute default integer adventofcode:2015/day07/calculate_wire
data remove storage adventofcode:2015/day07 calculate.stack[-1]
$data modify storage adventofcode:2015/day07 calculate.results.$(output) set from storage adventofcode:2015/day07 calculate.output
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day07 calculate.stack
execute if data storage adventofcode:2015/day07 calculate.stack[-1] run return run function adventofcode:2015/day07/internal/calculate/finish_wire
execute unless data storage adventofcode:2015/day07 result.part1 run return run function adventofcode:2015/day07/internal/calculate/finish/part1
execute unless data storage adventofcode:2015/day07 result.part2 run return run function adventofcode:2015/day07/internal/calculate/finish/part2