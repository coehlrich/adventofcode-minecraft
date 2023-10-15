execute unless data storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0] run function adventofcode:internal/utils/string/regex/find/finish_tokens
execute unless data storage adventofcode:string/regex current.find.stack[-1].tokens_stack[0] run return 1

data modify storage adventofcode:string/regex current.find.token set from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0]
#say searching
data modify storage adventofcode:string/regex current.find.stack append from storage adventofcode:string/regex current.find.stack[-1]
#say match token
#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "current.find"}

execute if data storage adventofcode:string/regex current.find.token{type: "group"} if function adventofcode:internal/utils/string/regex/find/types/group run return 1
execute if data storage adventofcode:string/regex current.find.token{type: "character_set"} if function adventofcode:internal/utils/string/regex/find/types/character_set run return 1
execute if data storage adventofcode:string/regex current.find.token{type: "range"} if function adventofcode:internal/utils/string/regex/find/types/range run return 1
execute if data storage adventofcode:string/regex current.find.token{type: "group_reference"} if function adventofcode:internal/utils/string/regex/find/types/group_reference run return 1
execute if data storage adventofcode:string/regex current.find.token{type: "quantifier"} if function adventofcode:internal/utils/string/regex/find/types/quantifier run return 1

data remove storage adventofcode:string/regex current.find.stack[-1]
return 0