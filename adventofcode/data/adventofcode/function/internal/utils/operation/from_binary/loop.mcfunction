#tellraw @a {"storage": "adventofcode:operation/from_binary", "nbt": "data"}

data modify storage adventofcode:operation/from_binary data.call.first set from storage adventofcode:operation/from_binary output
data modify storage adventofcode:operation/from_binary data.call.second set value 2
execute store result storage adventofcode:operation/from_binary output int 1 run function adventofcode:internal/utils/operation/multiplication with storage adventofcode:operation/from_binary data.call

execute if predicate adventofcode:operation/from_binary/on run function adventofcode:internal/utils/operation/increment {input: "storage adventofcode:operation/from_binary output"}
data remove storage adventofcode:operation/from_binary data.value[0]

execute if data storage adventofcode:operation/from_binary data.value[0] run function adventofcode:internal/utils/operation/from_binary/loop