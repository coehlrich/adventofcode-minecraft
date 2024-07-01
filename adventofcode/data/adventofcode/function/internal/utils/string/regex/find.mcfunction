data modify storage adventofcode:string/regex current.find.stack[0].groups[0].start set from storage adventofcode:string/regex current.find.stack[0].position
execute if function adventofcode:internal/utils/string/regex/find/match_token run return 1
return run execute if function adventofcode:internal/utils/string/regex/find/read_char run function adventofcode:internal/utils/string/regex/find
return 0