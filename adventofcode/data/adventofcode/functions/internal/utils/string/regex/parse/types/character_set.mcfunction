data modify storage adventofcode:string/regex current.parse.stack append value {type: "character_set", tokens: [], negated: 0b}
#function adventofcode:internal/utils/string/regex/parse/peek_char
#execute if data storage adventofcode:string/regex current.parse{peeked_char: "^"} run data modify storage adventofcode:string/regex current.parse.stack[-1].negated set value 1b
#execute if data storage adventofcode:string/regex current.parse{peeked_char: "^"} run function adventofcode:internal/utils/string/regex/parse/read_char

function adventofcode:internal/utils/string/regex/parse/types/character_set/loop

function adventofcode:internal/utils/string/regex/parse/read_char
return 1