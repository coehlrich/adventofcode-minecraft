data modify storage adventofcode:string/contains call.first set from storage adventofcode:string/contains current.position
data modify storage adventofcode:string/contains call.second set from storage adventofcode:string/contains current.length
execute store result storage adventofcode:string/contains current.position_plus_length int 1 run function adventofcode:internal/utils/operation/add with storage adventofcode:string/contains call
data modify storage adventofcode:string/contains call set value {output: "storage adventofcode:string/contains current.char", input: "storage adventofcode:string/contains current.input"}
data modify storage adventofcode:string/contains call.start set from storage adventofcode:string/contains current.position 
data modify storage adventofcode:string/contains call.end set from storage adventofcode:string/contains current.position_plus_length
function adventofcode:internal/utils/substring with storage adventofcode:string/contains call
#tellraw @a {"storage": "adventofcode:string/contains", "nbt": "current"}
#$say $(contains)
$execute if data storage adventofcode:string/contains {current: {char: "$(contains)"}} run function adventofcode:internal/utils/operation/increment {input: "storage adventofcode:string/contains count"}
#tellraw @a {"storage": "adventofcode:string/contains", "nbt": "count"}

function adventofcode:internal/utils/operation/increment {input: "storage adventofcode:string/contains current.position"}
data modify storage adventofcode:string/contains call.value set from storage adventofcode:string/contains current.position
execute store result storage adventofcode:string/contains call.comparison int 1 run data get storage adventofcode:string/contains current.end
execute store result storage adventofcode:string/contains current.finished int 1 run function adventofcode:internal/utils/compare/greater_than_or_equal with storage adventofcode:string/contains call

$execute if data storage adventofcode:string/contains {current: {finished: 0}} run function adventofcode:internal/utils/string/contains/loop {contains: "$(contains)"}