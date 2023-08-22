data modify storage adventofcode:string/split current.parsed set value []
$data modify storage adventofcode:string/split current.input set from $(input)
data modify storage adventofcode:string/split current.position set value 0
data modify storage adventofcode:string/split current.previous_end set value 0
data modify storage adventofcode:string/split current.start set value 0
execute store result storage adventofcode:string/split current.end int 1 run data get storage adventofcode:string/split current.input
$function adventofcode:internal/utils/string/split/loop {split: "$(split)"}
function adventofcode:internal/utils/string/split/append_current
$data modify $(output) set from storage adventofcode:string/split current.parsed
data remove storage adventofcode:string/split current