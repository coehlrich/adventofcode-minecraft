data remove storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1]
execute unless data storage adventofcode:string/regex current.find.stack[-1].tokens_stack[0] run return 0
data modify storage adventofcode:string/regex current.find.token set from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0]

execute if data storage adventofcode:string/regex current.find.token{type: "group"} run function adventofcode:internal/utils/string/regex/find/post/group
execute if data storage adventofcode:string/regex current.find.token{type: "character_set"} run function adventofcode:internal/utils/string/regex/find/post/character_set

execute unless data storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0] run function adventofcode:internal/utils/string/regex/find/finish_tokens