data modify storage adventofcode:2015/day07 result.part1 set from storage adventofcode:2015/day07 calculate.output
data modify storage adventofcode:2015/day07 wires.b set value {operation: 0, inputs: [{type: "direct"}], output: "b"}
data modify storage adventofcode:2015/day07 wires.b.inputs[0].value set from storage adventofcode:2015/day07 result.part1

data remove storage adventofcode:2015/day07 calculate
data modify storage adventofcode:2015/day07 calculate.stack set value []
data modify storage adventofcode:2015/day07 calculate.stack append from storage adventofcode:2015/day07 wires.a
data modify storage adventofcode:2015/day07 calculate.stack[0].values set value []
bossbar set adventofcode:progress value 1
schedule function adventofcode:2015/day07/internal/tick 1t replace