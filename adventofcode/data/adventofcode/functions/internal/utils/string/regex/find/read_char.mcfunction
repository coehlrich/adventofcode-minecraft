data modify storage adventofcode:string/regex call.value set from storage adventofcode:string/regex current.find.stack[-1].position
execute store result storage adventofcode:string/regex call.comparison int 1 run data get storage adventofcode:string/regex current.find.end
execute store result storage adventofcode:string/regex current.find.finished int 1 run function adventofcode:internal/utils/compare/greater_than_or_equal with storage adventofcode:string/regex call
execute if data storage adventofcode:string/regex current.find{finished: 1} run return 0

data modify storage adventofcode:string/regex call.output set value "storage adventofcode:string/regex current.find.current_char"
data modify storage adventofcode:string/regex call.input set value "storage adventofcode:string/regex current.input"
data modify storage adventofcode:string/regex call.start set from storage adventofcode:string/regex current.find.stack[-1].position
function adventofcode:internal/utils/operation/increment {input: "storage adventofcode:string/regex current.find.stack[-1].position"}
data modify storage adventofcode:string/regex call.end set from storage adventofcode:string/regex current.find.stack[-1].position
function adventofcode:internal/utils/substring with storage adventofcode:string/regex call
return 1