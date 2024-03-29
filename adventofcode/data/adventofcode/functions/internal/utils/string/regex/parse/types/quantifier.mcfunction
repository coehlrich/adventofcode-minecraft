function adventofcode:internal/utils/string/regex/parse/read_char
data modify storage adventofcode:string/regex current.parse.stack append value {type: "quantifier"}
execute if data storage adventofcode:string/regex current.parse{current_char: "*"} run data modify storage adventofcode:string/regex current.parse.stack[-1] merge value {min: 0}
execute if data storage adventofcode:string/regex current.parse{current_char: "+"} run data modify storage adventofcode:string/regex current.parse.stack[-1] merge value {min: 1}
data modify storage adventofcode:string/regex current.parse.stack[-1].token set from storage adventofcode:string/regex current.parse.stack[-2]
data remove storage adventofcode:string/regex current.parse.stack[-2]

return 1