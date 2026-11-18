data modify storage adventofcode:string/to_int_array input set from storage adventofcode:2015/day19 convert.input
function adventofcode:internal/utils/string/to_int_array
data modify storage adventofcode:2015/day19 convert.input_array set from storage adventofcode:string/to_int_array output
data modify storage adventofcode:2015/day19 convert.output set value []
function adventofcode:2015/day19/internal/convert_string/loop