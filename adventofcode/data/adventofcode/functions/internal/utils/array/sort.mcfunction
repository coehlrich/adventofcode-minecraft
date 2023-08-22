$data modify storage adventofcode:array/sort array set from $(array)
data modify storage adventofcode:array/sort index set value 1
execute store result storage adventofcode:array/sort end int 1 run data get storage adventofcode:array/sort array
data modify storage adventofcode:array/sort call.index set from storage adventofcode:array/sort index
function adventofcode:internal/utils/array/sort/loop with storage adventofcode:array/sort call
$data modify $(array) set from storage adventofcode:array/sort array