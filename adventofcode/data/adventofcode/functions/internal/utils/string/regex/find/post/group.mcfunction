data modify storage adventofcode:string/regex call.index set from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].index
function adventofcode:internal/utils/string/regex/find/post/group/set_group with storage adventofcode:string/regex call
#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "current.find"}

data remove storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0]