execute if data storage adventofcode:array/sort {find: {index: 0}} run data modify storage adventofcode:array/sort array insert 0 from storage adventofcode:array/sort current
execute if data storage adventofcode:array/sort {find: {index: 0}} run return 0

data modify storage adventofcode:array/sort call set value {second: 1}
data modify storage adventofcode:array/sort call.first set from storage adventofcode:array/sort find.index
execute store result storage adventofcode:array/sort find.previous int 1 run function adventofcode:internal/utils/operation/subtraction with storage adventofcode:array/sort call
#tellraw @a {"storage":"adventofcode:array/sort","nbt":"call"}
data modify storage adventofcode:array/sort call set value {array: "storage adventofcode:array/sort array"}
data modify storage adventofcode:array/sort call.index set from storage adventofcode:array/sort find.previous
#This line currently stores 0
execute store result storage adventofcode:array/sort output int 1 run function adventofcode:internal/utils/array/get with storage adventofcode:array/sort call
#tellraw @a {"storage":"adventofcode:array/sort","nbt":"output"}
data modify storage adventofcode:array/sort call.comparison set from storage adventofcode:array/sort output
data modify storage adventofcode:array/sort call.value set from storage adventofcode:array/sort current
#tellraw @a {"storage":"adventofcode:array/sort","nbt":"call"}
execute store result storage adventofcode:array/sort output int 1 run function adventofcode:internal/utils/compare/greater_than_or_equal with storage adventofcode:array/sort call

$execute if data storage adventofcode:array/sort {output: 1} run data modify storage adventofcode:array/sort array insert $(index) from storage adventofcode:array/sort current
execute if data storage adventofcode:array/sort {output: 1} run return 0

data modify storage adventofcode:array/sort find.index set from storage adventofcode:array/sort find.previous
data modify storage adventofcode:array/sort call.index set from storage adventofcode:array/sort find.index
function adventofcode:internal/utils/array/sort/find with storage adventofcode:array/sort call