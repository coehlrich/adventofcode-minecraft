function adventofcode:internal/utils/string/regex/parse/read_char

return run execute if data storage adventofcode:string/regex current.parse{current_char: "("} run function adventofcode:internal/utils/string/regex/parse/types/group
return run execute if data storage adventofcode:string/regex current.parse{current_char: "["} run function adventofcode:internal/utils/string/regex/parse/types/character_set
execute if data storage adventofcode:string/regex current.parse{current_char: "\\"} if function adventofcode:internal/utils/string/regex/parse/types/non_class_backslash run return 1
return run function adventofcode:internal/utils/string/regex/parse/read_regex_char