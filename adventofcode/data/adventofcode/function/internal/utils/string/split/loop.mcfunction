data modify storage adventofcode:string/split call.input set from storage adventofcode:string/split current.position
execute store result storage adventofcode:string/split current.position_plus_one int 1 run function adventofcode:internal/utils/operation/add_one with storage adventofcode:string/split call
data modify storage adventofcode:string/split call set value {output: "storage adventofcode:string/split current.char", input: "storage adventofcode:string/split current.input"}
data modify storage adventofcode:string/split call.start set from storage adventofcode:string/split current.position 
data modify storage adventofcode:string/split call.end set from storage adventofcode:string/split current.position_plus_one
function adventofcode:internal/utils/substring with storage adventofcode:string/split call
$execute if data storage adventofcode:string/split {current: {char: "$(split)"}} run function adventofcode:internal/utils/string/split/append_current

function adventofcode:internal/utils/operation/increment {input: "storage adventofcode:string/split current.position"}
data modify storage adventofcode:string/split call.value set from storage adventofcode:string/split current.position
execute store result storage adventofcode:string/split call.comparison int 1 run data get storage adventofcode:string/split current.input
execute store result storage adventofcode:string/split current.finished int 1 run function adventofcode:internal/utils/compare/equals with storage adventofcode:string/split call

$execute if data storage adventofcode:string/split {current: {finished: 0}} run function adventofcode:internal/utils/string/split/loop {split: "$(split)"}