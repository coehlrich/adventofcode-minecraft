function adventofcode:internal/utils/string/regex/parse/peek_char
execute \
    unless data storage adventofcode:string/regex current.parse{peeked_char: "1"} \
    unless data storage adventofcode:string/regex current.parse{peeked_char: "2"} \
    unless data storage adventofcode:string/regex current.parse{peeked_char: "3"} \
    unless data storage adventofcode:string/regex current.parse{peeked_char: "4"} \
    unless data storage adventofcode:string/regex current.parse{peeked_char: "5"} \
    unless data storage adventofcode:string/regex current.parse{peeked_char: "6"} \
    unless data storage adventofcode:string/regex current.parse{peeked_char: "7"} \
    unless data storage adventofcode:string/regex current.parse{peeked_char: "8"} \
    unless data storage adventofcode:string/regex current.parse{peeked_char: "9"} run return 0
function adventofcode:internal/utils/string/regex/parse/read_char
data modify storage adventofcode:string/regex current.parse.stack append value {type: "group_reference"}
data modify storage adventofcode:string/regex call.num set from storage adventofcode:string/regex current.parse.current_char
execute store result storage adventofcode:string/regex current.parse.stack[-1].reference int 1 run function adventofcode:internal/utils/parse_int with storage adventofcode:string/regex call
return 1