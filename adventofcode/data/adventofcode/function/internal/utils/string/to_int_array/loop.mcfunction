data modify storage adventofcode:string/to_int current.char set string storage adventofcode:string/to_int_array input 0 1
execute store result storage adventofcode:string/to_int_array output_int int 1 run function adventofcode:internal/utils/string/to_int
data modify storage adventofcode:string/to_int_array output append from storage adventofcode:string/to_int_array output_int
data modify storage adventofcode:string/to_int_array input set string storage adventofcode:string/to_int_array input 1
execute unless data storage adventofcode:string/to_int_array {input: ""} run function adventofcode:internal/utils/string/to_int_array/loop