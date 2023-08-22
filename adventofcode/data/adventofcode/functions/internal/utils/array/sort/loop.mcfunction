#tellraw @a {"storage": "adventofcode:array/sort", "nbt": "array"}
$data modify storage adventofcode:array/sort current set from storage adventofcode:array/sort array[$(index)]
$data remove storage adventofcode:array/sort array[$(index)]
data modify storage adventofcode:array/sort find.index set from storage adventofcode:array/sort index
data modify storage adventofcode:array/sort call.index set from storage adventofcode:array/sort find.index
function adventofcode:internal/utils/array/sort/find with storage adventofcode:array/sort call

function adventofcode:internal/utils/operation/increment {input: "storage adventofcode:array/sort index"}
data modify storage adventofcode:array/sort call set value {array: "storage adventofcode:array/sort array"}
data modify storage adventofcode:array/sort call.index set from storage adventofcode:array/sort index
execute store result storage adventofcode:array/sort check int 1 run function adventofcode:internal/utils/array/lengthcheck with storage adventofcode:array/sort call
data modify storage adventofcode:array/sort call.index set from storage adventofcode:array/sort index
#tellraw @a {"storage": "adventofcode:array/sort", "nbt": "check"}
execute if data storage adventofcode:array/sort {check: 1} run function adventofcode:internal/utils/array/sort/loop with storage adventofcode:array/sort call