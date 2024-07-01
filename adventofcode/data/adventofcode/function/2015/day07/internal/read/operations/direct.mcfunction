data modify storage adventofcode:2015 day07.wire set value {type: "direct"}
data modify storage adventofcode:2015 day07.wire.value set from storage adventofcode:string/regex output.groups[1].text
data modify storage adventofcode:2015 day07.wire.wire_name set from storage adventofcode:string/regex output.groups[2].text

data modify storage adventofcode:2015 day07.value.input set from storage adventofcode:2015 day07.wire.value
function adventofcode:2015/day07/internal/read/values/check
data modify storage adventofcode:2015 day07.wire.value set from storage adventofcode:2015 day07.value.output

#tellraw @a {"storage": "adventofcode:2015", "nbt": "day07.wire"}
data modify storage adventofcode:2015 day07.data.call.wire_name set from storage adventofcode:2015 day07.wire.wire_name
function adventofcode:2015/day07/internal/read/store with storage adventofcode:2015 day07.data.call
#execute if data storage adventofcode:2015 day07.input[0] run function adventofcode:2015/day07/internal/read_line