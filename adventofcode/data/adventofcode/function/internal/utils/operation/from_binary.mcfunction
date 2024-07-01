data modify storage adventofcode:operation/from_binary output set value 0
data modify storage adventofcode:operation/from_binary data.value set from storage adventofcode:operation/from_binary inputs.value
function adventofcode:internal/utils/operation/from_binary/loop

return run data get storage adventofcode:operation/from_binary output