data remove storage adventofcode:string/regex output
$data modify storage adventofcode:string/regex current.input set from $(input)
$data modify storage adventofcode:string/regex current.regex set from $(regex)
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

data modify storage adventofcode:string/regex current.find.stack set value []
data modify storage adventofcode:string/regex current.find.stack append value {position: 0, groups: [{}], tokens_stack: []}
data modify storage adventofcode:string/regex current.find.stack[-1].tokens_stack append from storage adventofcode:string/regex current.parsed
execute store result storage adventofcode:string/regex current.find.end int 1 run data get storage adventofcode:string/regex current.input
execute store result storage adventofcode:string/regex output.success int 1 run function adventofcode:internal/utils/string/regex/find

execute if data storage adventofcode:string/regex output{success: 1} run data modify storage adventofcode:string/regex current.find.stack[-1].groups[0].end set from storage adventofcode:string/regex current.find.stack[-1].position
execute if data storage adventofcode:string/regex output{success: 1} run data modify storage adventofcode:string/regex call set value {input: "storage adventofcode:string/regex current.input", output: "storage adventofcode:string/regex current.find.stack[-1].groups[0].text"}
execute if data storage adventofcode:string/regex output{success: 1} run data modify storage adventofcode:string/regex call.start set from storage adventofcode:string/regex current.find.stack[-1].groups[0].start
execute if data storage adventofcode:string/regex output{success: 1} run data modify storage adventofcode:string/regex call.end set from storage adventofcode:string/regex current.find.stack[-1].groups[0].end
execute if data storage adventofcode:string/regex output{success: 1} run function adventofcode:internal/utils/substring with storage adventofcode:string/regex call

execute if data storage adventofcode:string/regex output{success: 1} run data modify storage adventofcode:string/regex output.groups set from storage adventofcode:string/regex current.find.stack[-1].groups
data remove storage adventofcode:string/regex current.find
#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "output"}
return run data get storage adventofcode:string/regex output.success


#data modify storage adventofcode:string/regex count set value 0
#execute store result storage adventofcode:string/regex call.first int 1 run data get storage adventofcode:string/regex current.input
#execute store result storage adventofcode:string/regex call.second int 1 run data get storage adventofcode:string/regex current.contains
#execute store result storage adventofcode:string/regex current.end int 1 run function adventofcode:internal/utils/operation/subtraction with storage adventofcode:string/regex call
#function adventofcode:internal/utils/operation/increment {input: "storage adventofcode:string/regex current.end"}
#execute store result storage adventofcode:string/regex current.length int 1 run data get storage adventofcode:string/regex current.contains
#$function adventofcode:internal/utils/string/regex/loop {contains: "$(contains)"}
#data remove storage adventofcode:string/regex current
#return run data get storage adventofcode:string/regex count