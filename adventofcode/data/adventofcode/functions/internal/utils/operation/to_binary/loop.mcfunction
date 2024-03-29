data modify storage adventofcode:operation/to_binary data.call.first set from storage adventofcode:operation/to_binary data.value
data modify storage adventofcode:operation/to_binary data.call.second set value 2
execute store result storage adventofcode:operation/to_binary data.result int 1 run function adventofcode:internal/utils/operation/modulo with storage adventofcode:operation/to_binary data.call

data modify storage adventofcode:operation/to_binary output prepend from storage adventofcode:operation/to_binary data.result

#tellraw @a {"storage": "adventofcode:operation/to_binary", "nbt": "data"}

data modify storage adventofcode:operation/to_binary data.call.first set from storage adventofcode:operation/to_binary data.value
data modify storage adventofcode:operation/to_binary data.call.second set value 2
execute store result storage adventofcode:operation/to_binary data.value int 1 run function adventofcode:internal/utils/operation/division with storage adventofcode:operation/to_binary data.call

execute store result storage adventofcode:operation/to_binary data.count int 1 run data get storage adventofcode:operation/to_binary output
execute unless predicate adventofcode:operation/to_binary/finished run function adventofcode:internal/utils/operation/to_binary/loop