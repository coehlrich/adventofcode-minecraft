function adventofcode:internal/utils/string/regex/parse/peek_char
execute if data storage adventofcode:string/regex current.parse{peeked_char: "]"} run return 1

function adventofcode:internal/utils/string/regex/parse/read_char
function adventofcode:internal/utils/string/regex/parse/peek_char
execute if data storage adventofcode:string/regex current.parse{peeked_char: "-"} run function adventofcode:internal/utils/string/regex/parse/types/character_set/read_range
execute unless data storage adventofcode:string/regex current.parse{peeked_char: "-"} run function adventofcode:internal/utils/string/regex/parse/read_regex_char

data modify storage adventofcode:string/regex current.parse.stack[-2].tokens append from storage adventofcode:string/regex current.parse.stack[-1]
data remove storage adventofcode:string/regex current.parse.stack[-1]
function adventofcode:internal/utils/string/regex/parse/types/character_set/loop