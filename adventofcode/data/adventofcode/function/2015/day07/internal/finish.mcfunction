data modify storage adventofcode:2015 day07.calculate.wires set from storage adventofcode:2015 day07.wires
data modify storage adventofcode:2015 day07.calculate.using_wires set value []
function adventofcode:2015/day07/internal/calculate/lookup {wire_name: "a"}
data modify storage adventofcode:2015 day07.part1.binary set from storage adventofcode:2015 day07.calculate.result
data modify storage adventofcode:operation/from_binary inputs.value set from storage adventofcode:2015 day07.part1.binary
execute store result storage adventofcode:2015 day07.part1.decimal int 1 run function adventofcode:internal/utils/operation/from_binary

data modify storage adventofcode:2015 day07.calculate.wires set from storage adventofcode:2015 day07.wires
data modify storage adventofcode:2015 day07.calculate.using_wires set value []
data modify storage adventofcode:2015 day07.calculate.wires.b set value {type:"direct", value:{type: 0, value: []}, wire_name:"b"}
data modify storage adventofcode:2015 day07.calculate.wires.b.value.value set from storage adventofcode:2015 day07.part1.binary
function adventofcode:2015/day07/internal/calculate/lookup {wire_name: "a"}
data modify storage adventofcode:2015 day07.part2.binary set from storage adventofcode:2015 day07.calculate.result
data modify storage adventofcode:operation/from_binary inputs.value set from storage adventofcode:2015 day07.part2.binary
execute store result storage adventofcode:2015 day07.part2.decimal int 1 run function adventofcode:internal/utils/operation/from_binary

tellraw @a "Adventofcode 2015 day 7 answers:"
tellraw @a ["Part 1: ", {"storage": "adventofcode:2015", "nbt": "day07.part1.decimal"}]
tellraw @a ["Part 2: ", {"storage": "adventofcode:2015", "nbt": "day07.part2.decimal"}]