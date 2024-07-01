execute store result storage adventofcode:string/regex current.find.result int 1 run data get storage adventofcode:string/regex current.find.stack[-1].position
data remove storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0]
execute if data storage adventofcode:string/regex current.find{result: 0} run return run function adventofcode:internal/utils/string/regex/find/match_token
return 0