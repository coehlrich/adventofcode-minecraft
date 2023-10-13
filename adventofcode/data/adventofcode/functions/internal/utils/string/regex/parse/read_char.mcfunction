data modify storage adventofcode:string/regex call.output set value "storage adventofcode:string/regex current.parse.current_char"
data modify storage adventofcode:string/regex call.input set value "storage adventofcode:string/regex current.regex"
data modify storage adventofcode:string/regex call.start set from storage adventofcode:string/regex current.parse.position
function adventofcode:internal/utils/operation/increment {input: "storage adventofcode:string/regex current.parse.position"}
data modify storage adventofcode:string/regex call.end set from storage adventofcode:string/regex current.parse.position
function adventofcode:internal/utils/substring with storage adventofcode:string/regex call