data modify storage adventofcode:string/regex current.parse.stack append value {type: "range"}
data modify storage adventofcode:string/regex call.char set from storage adventofcode:string/regex current.parse.current_char
execute store result storage adventofcode:string/regex current.parse.stack[-1].start int 1 run function adventofcode:internal/utils/string/to_int with storage adventofcode:string/regex call

function adventofcode:internal/utils/string/regex/parse/read_char
function adventofcode:internal/utils/string/regex/parse/read_char

data modify storage adventofcode:string/regex call.char set from storage adventofcode:string/regex current.parse.current_char
execute store result storage adventofcode:string/regex current.parse.stack[-1].end int 1 run function adventofcode:internal/utils/string/to_int with storage adventofcode:string/regex call