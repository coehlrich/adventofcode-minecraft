data modify storage adventofcode:string/to_int current.char set string storage adventofcode:2015/day04 convert_input.input 0 1
execute store result storage adventofcode:2015/day04 convert_input.current_value int 1 run function adventofcode:internal/utils/string/to_int
data modify storage adventofcode:2015/day04 base append from storage adventofcode:2015/day04 convert_input.current_value
data modify storage adventofcode:2015/day04 convert_input.input set string storage adventofcode:2015/day04 convert_input.input 1
execute unless data storage adventofcode:2015/day04 convert_input{input: ""} run function adventofcode:2015/day04/internal/convert_input