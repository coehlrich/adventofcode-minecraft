data modify storage adventofcode:string/regex current.parsed set value []
data modify storage adventofcode:string/regex current.parse.stack set value []
data modify storage adventofcode:string/regex current.parse.position set value 0
data modify storage adventofcode:string/regex current.parse.group_count set value 1
$data modify storage adventofcode:string/regex current.input set from $(input)
$data modify storage adventofcode:string/regex current.regex set from $(regex)
execute store result storage adventofcode:string/regex current.parse.end int 1 run data get storage adventofcode:string/regex current.regex
function adventofcode:internal/utils/string/regex/parse

data remove storage adventofcode:string/regex current.parse
#data modify storage adventofcode:string/regex count set value 0
#execute store result storage adventofcode:string/regex call.first int 1 run data get storage adventofcode:string/regex current.input
#execute store result storage adventofcode:string/regex call.second int 1 run data get storage adventofcode:string/regex current.contains
#execute store result storage adventofcode:string/regex current.end int 1 run function adventofcode:internal/utils/operation/subtraction with storage adventofcode:string/regex call
#function adventofcode:internal/utils/operation/increment {input: "storage adventofcode:string/regex current.end"}
#execute store result storage adventofcode:string/regex current.length int 1 run data get storage adventofcode:string/regex current.contains
#$function adventofcode:internal/utils/string/regex/loop {contains: "$(contains)"}
#data remove storage adventofcode:string/regex current
#return run data get storage adventofcode:string/regex count