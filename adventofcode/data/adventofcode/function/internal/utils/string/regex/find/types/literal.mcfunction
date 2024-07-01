execute unless function adventofcode:internal/utils/string/regex/find/read_char run return 0
#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "current.find.current_char"}
data modify storage adventofcode:string/regex literal.test1 set from storage adventofcode:string/regex current.find.current_char
data modify storage adventofcode:string/regex literal.test2 set from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].value
execute store result storage adventofcode:string/regex current.find.result int 1 run data modify storage adventofcode:string/regex literal.test1 set from storage adventofcode:string/regex literal.test2

data remove storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0]
execute if data storage adventofcode:string/regex current.find{result: 0} if function adventofcode:internal/utils/string/regex/find/match_token run return 1
return 0