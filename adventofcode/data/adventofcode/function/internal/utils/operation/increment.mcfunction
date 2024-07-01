# Function results need to be stored before returning - https://bugs.mojang.com/browse/MC-264595
$data modify storage adventofcode:operation call.input set from $(input)
$execute store result $(input) int 1 run function adventofcode:internal/utils/operation/add_one with storage adventofcode:operation call