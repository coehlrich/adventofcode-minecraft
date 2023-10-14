#execute if data storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].index run function adventofcode:internal/utils/operation/increment {input: "storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].index"}
#execute unless data storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].index run data modify storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].index set value 0

#data modify storage adventofcode:string/regex call.value set from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].index
#execute store result storage adventofcode:string/regex call.comparison int 1 run data get storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].tokens
#execute store result storage adventofcode:string/regex current.find.finished int 1 run function adventofcode:internal/utils/compare/greater_than_or_equal with storage adventofcode:string/regex call
#execute if data storage adventofcode:string/regex current.find{finished: 1} run return 0

execute unless data storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].tokens[0] run return 0
data modify storage adventofcode:string/regex current.find.stack[-1].tokens_stack append value []
data modify storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1] append from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-2][0].tokens[0]
data remove storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-2][0].tokens[0]
execute if function adventofcode:internal/utils/string/regex/find/match_token run return 1
return run function adventofcode:internal/utils/string/regex/find/types/character_set