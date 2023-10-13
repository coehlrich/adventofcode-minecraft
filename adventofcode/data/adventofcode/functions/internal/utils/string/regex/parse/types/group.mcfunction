data modify storage adventofcode:string/regex current.parse.stack append value {type: "group", tokens: []}
data modify storage adventofcode:string/regex current.parse.stack[-1].index set from storage adventofcode:string/regex current.parse.group_count

function adventofcode:internal/utils/string/regex/parse/types/group/loop

function adventofcode:internal/utils/string/regex/parse/read_char
return 1