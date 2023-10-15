#say entering
#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "current.find"}
data modify storage adventofcode:string/regex current.find.stack[-1].tokens_stack append value []
data modify storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1] append from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-2][0].token
execute if function adventofcode:internal/utils/string/regex/find/match_token run return 1
data remove storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1]
data remove storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0]
#say exiting
#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "current.find"}
return run function adventofcode:internal/utils/string/regex/find/match_token