data modify storage adventofcode:2015 day07.data.call.num set from storage adventofcode:2015 day07.value.input
execute store result storage adventofcode:operation/to_binary inputs.value int 1 run function adventofcode:internal/utils/parse_int with storage adventofcode:2015 day07.data.call
data modify storage adventofcode:operation/to_binary inputs.bits set value 16
function adventofcode:internal/utils/operation/to_binary
data modify storage adventofcode:2015 day07.value.output.value set from storage adventofcode:operation/to_binary output
data modify storage adventofcode:2015 day07.value.output.type set value 0