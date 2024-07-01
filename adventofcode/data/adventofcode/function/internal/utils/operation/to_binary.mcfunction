data modify storage adventofcode:operation/to_binary output set value []
data modify storage adventofcode:operation/to_binary data.value set from storage adventofcode:operation/to_binary inputs.value
function adventofcode:internal/utils/operation/to_binary/loop