data modify storage adventofcode:string/regex call.input set from storage adventofcode:string/regex current.parse.position
execute store result storage adventofcode:string/regex call.end int 1 run function adventofcode:internal/utils/operation/add_one with storage adventofcode:string/regex call
data modify storage adventofcode:string/regex call.output set value "storage adventofcode:string/regex current.parse.peeked_char"
data modify storage adventofcode:string/regex call.input set value "storage adventofcode:string/regex current.regex"
data modify storage adventofcode:string/regex call.start set from storage adventofcode:string/regex current.parse.position
function adventofcode:internal/utils/substring with storage adventofcode:string/regex call