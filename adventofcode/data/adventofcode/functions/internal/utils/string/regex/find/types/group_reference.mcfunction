data modify storage adventofcode:string/regex call.index set from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].reference
function adventofcode:internal/utils/string/regex/find/types/group_reference/get_group with storage adventofcode:string/regex call

data modify storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].start set from storage adventofcode:string/regex current.find.stack[-1].position
data modify storage adventofcode:string/regex call.first set from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].start
execute store result storage adventofcode:string/regex call.second int 1 run data get storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].group_text
execute store result storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].end int 1 run function adventofcode:internal/utils/operation/add with storage adventofcode:string/regex call

data modify storage adventofcode:string/regex call.value set from storage adventofcode:string/regex current.find.stack[-1].position
execute store result storage adventofcode:string/regex call.comparison int 1 run data get storage adventofcode:string/regex current.find.end
execute store result storage adventofcode:string/regex current.find.finished int 1 run function adventofcode:internal/utils/compare/greater_than_or_equal with storage adventofcode:string/regex call
execute if data storage adventofcode:string/regex current.find{finished: 1} run return 0

data modify storage adventofcode:string/regex current.find.stack[-1].position set from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].end

data modify storage adventofcode:string/regex call set value {input: "storage adventofcode:string/regex current.input", output: "storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].text"}
data modify storage adventofcode:string/regex call.start set from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].start
data modify storage adventofcode:string/regex call.end set from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].end
function adventofcode:internal/utils/substring with storage adventofcode:string/regex call

#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "call"}
#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "current.find.stack[-1].tokens_stack[-1][0]"}
#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "current.input"}
execute store result storage adventofcode:string/regex current.find.result int 1 run data modify storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].group_text set from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].text
data remove storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0]
execute if data storage adventofcode:string/regex current.find{result: 0} if function adventofcode:internal/utils/string/regex/find/match_token run return 1
return 0