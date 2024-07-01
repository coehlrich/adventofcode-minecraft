data modify storage adventofcode:2015 day07.wire set value {type: "left_shift"}
data modify storage adventofcode:2015 day07.wire.input set from storage adventofcode:string/regex output.groups[1].text
data modify storage adventofcode:2015 day07.data.call.num set from storage adventofcode:string/regex output.groups[2].text
execute store result storage adventofcode:2015 day07.wire.amount int 1 run function adventofcode:internal/utils/parse_int with storage adventofcode:2015 day07.data.call
data modify storage adventofcode:2015 day07.wire.wire_name set from storage adventofcode:string/regex output.groups[3].text

data modify storage adventofcode:2015 day07.value.input set from storage adventofcode:2015 day07.wire.input
function adventofcode:2015/day07/internal/read/values/check
data modify storage adventofcode:2015 day07.wire.input set from storage adventofcode:2015 day07.value.output

data modify storage adventofcode:2015 day07.data.call.wire_name set from storage adventofcode:2015 day07.wire.wire_name
function adventofcode:2015/day07/internal/read/store with storage adventofcode:2015 day07.data.call
#execute if data storage adventofcode:2015 day07.input[0] run function adventofcode:2015/day07/internal/read_line