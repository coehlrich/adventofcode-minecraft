execute unless function adventofcode:internal/utils/string/regex/find/read_char run return 0
#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "current.find.current_char"}
data modify storage adventofcode:string/regex call.char set from storage adventofcode:string/regex current.find.current_char
execute store result storage adventofcode:string/regex call.value int 1 run function adventofcode:internal/utils/string/to_int with storage adventofcode:string/regex call
data modify storage adventofcode:string/regex call.start set from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].start
data modify storage adventofcode:string/regex call.end set from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].end
execute store result storage adventofcode:string/regex current.find.result int 1 run function adventofcode:internal/utils/compare/match with storage adventofcode:string/regex call
#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "call"}
#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "current.find.result"}
data remove storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0]
execute if data storage adventofcode:string/regex current.find{result: 1} if function adventofcode:internal/utils/string/regex/find/match_token run return 1
return 0