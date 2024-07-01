data modify storage adventofcode:string/split call set value {output: "storage adventofcode:string/split current.measurement", input: "storage adventofcode:string/split current.input"}
data modify storage adventofcode:string/split call.start set from storage adventofcode:string/split current.start
data modify storage adventofcode:string/split call.end set from storage adventofcode:string/split current.position
function adventofcode:internal/utils/substring with storage adventofcode:string/split call
data modify storage adventofcode:string/split current.parsed append from storage adventofcode:string/split current.measurement
data modify storage adventofcode:string/split current.start set from storage adventofcode:string/split current.position_plus_one