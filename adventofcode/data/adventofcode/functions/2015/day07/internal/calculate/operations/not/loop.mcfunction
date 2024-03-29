data modify storage adventofcode:2015 day07.calculate.using_wires[-1].result append value 0
execute if predicate adventofcode:2015/day07/calculate/set_not run data modify storage adventofcode:2015 day07.calculate.using_wires[-1].result[-1] set value 1
data remove storage adventofcode:2015 day07.calculate.using_wires[-1].input.result[0]
execute if data storage adventofcode:2015 day07.calculate.using_wires[-1].input.result[0] run function adventofcode:2015/day07/internal/calculate/operations/not/loop