$data modify storage adventofcode:string/regex current.find.stack[-1].groups[$(index)].end set from storage adventofcode:string/regex current.find.stack[-1].position
$data modify storage adventofcode:string/regex current.find.stack[-1].groups[$(index)].start set from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].start
$data modify storage adventofcode:string/regex call set value {output: "storage adventofcode:string/regex current.find.stack[-1].groups[$(index)].text", input: "storage adventofcode:string/regex current.input"}
data modify storage adventofcode:string/regex call.start set from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].start
data modify storage adventofcode:string/regex call.end set from storage adventofcode:string/regex current.find.stack[-1].position
function adventofcode:internal/utils/substring with storage adventofcode:string/regex call