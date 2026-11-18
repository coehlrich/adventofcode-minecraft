data modify storage adventofcode:2015/day19 parse.line set from storage adventofcode:2015/day19 input[0]
execute if data storage adventofcode:2015/day19 parse{line: ""} run return 0
data modify storage adventofcode:2015/day19 test_char set string storage adventofcode:2015/day19 parse.line 1 2

execute if data storage adventofcode:2015/day19 {test_char: " "} run data modify storage adventofcode:2015/day19 parse.key set string storage adventofcode:2015/day19 parse.line 0 1
execute unless data storage adventofcode:2015/day19 {test_char: " "} run data modify storage adventofcode:2015/day19 parse.key set string storage adventofcode:2015/day19 parse.line 0 2

execute if data storage adventofcode:2015/day19 {test_char: " "} run data modify storage adventofcode:2015/day19 parse.line set string storage adventofcode:2015/day19 parse.line 5
execute unless data storage adventofcode:2015/day19 {test_char: " "} run data modify storage adventofcode:2015/day19 parse.line set string storage adventofcode:2015/day19 parse.line 6

data modify storage adventofcode:2015/day19 convert.input set from storage adventofcode:2015/day19 parse.key
function adventofcode:2015/day19/internal/convert_string
data modify storage adventofcode:2015/day19 parse.key set from storage adventofcode:2015/day19 convert.output

data modify storage adventofcode:2015/day19 convert.input set from storage adventofcode:2015/day19 parse.line
function adventofcode:2015/day19/internal/convert_string
data modify storage adventofcode:2015/day19 parse.value set from storage adventofcode:2015/day19 convert.output
data remove storage adventofcode:2015/day19 parse.line
data modify storage adventofcode:2015/day19 replacements append from storage adventofcode:2015/day19 parse
data remove storage adventofcode:2015/day19 input[0]
function adventofcode:2015/day19/internal/parse_key_values