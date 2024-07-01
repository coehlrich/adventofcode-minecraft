#data modify storage adventofcode:string/regex current.input set value "sszojmmrrkwuftyv"
#data modify storage adventofcode:string/regex current.regex set value "([a-z])\\1"
#data modify storage adventofcode:string/regex current.input set value "abccddabee"
#data modify storage adventofcode:string/regex current.regex set value "([a-z][a-z])[a-z]*\\1"
data modify storage adventofcode:string/regex current.parse.stack set value []
data modify storage adventofcode:string/regex current.parse.position set value 0
data modify storage adventofcode:string/regex current.parse.group_count set value 1
execute store result storage adventofcode:string/regex current.parse.end int 1 run data get storage adventofcode:string/regex current.regex
function adventofcode:internal/utils/string/regex/parse
data modify storage adventofcode:string/regex current.parsed set from storage adventofcode:string/regex current.parse.stack
#data remove storage adventofcode:string/regex current.parse.stack[-1]
#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "current.parsed"}
data remove storage adventofcode:string/regex current.parse