function adventofcode:internal/utils/string/regex/parse/read_regex

data modify storage adventofcode:string/regex current.parsed append from storage adventofcode:string/regex current.parse.stack[-1]
data remove storage adventofcode:string/regex current.parse.stack[-1]

data modify storage adventofcode:string/regex call.value set from storage adventofcode:string/regex current.parse.position
execute store result storage adventofcode:string/regex call.comparison int 1 run data get storage adventofcode:string/regex current.parse.end
execute store result storage adventofcode:string/regex current.parse.finished int 1 run function adventofcode:internal/utils/compare/greater_than_or_equal with storage adventofcode:string/regex call
execute if data storage adventofcode:string/regex current.parse{finished: 0} run function adventofcode:internal/utils/string/regex/parse