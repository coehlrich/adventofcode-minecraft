function adventofcode:internal/utils/string/regex/parse/peek_char
execute if data storage adventofcode:string/regex current.parse{peeked_char: "*"} run return run function adventofcode:internal/utils/string/regex/parse/types/quantifier
execute if data storage adventofcode:string/regex current.parse{peeked_char: "+"} run return run function adventofcode:internal/utils/string/regex/parse/types/quantifier
return 0