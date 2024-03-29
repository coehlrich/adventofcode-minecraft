data remove storage adventofcode:2015 day07.calculate.using_wires[-1].result[0]
data modify storage adventofcode:2015 day07.calculate.using_wires[-1].result append value 0
function adventofcode:internal/utils/operation/increment {input: "storage adventofcode:2015 day07.calculate.using_wires[-1].count"}
execute unless predicate adventofcode:2015/day07/calculate/shift_finished run function adventofcode:2015/day07/internal/calculate/operations/left_shift/loop