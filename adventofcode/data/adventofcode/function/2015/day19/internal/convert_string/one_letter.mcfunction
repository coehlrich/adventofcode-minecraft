data modify storage adventofcode:2015/day19 convert.output append from storage adventofcode:2015/day19 convert.input_array[0]
data remove storage adventofcode:2015/day19 convert.input_array[0]
execute if data storage adventofcode:2015/day19 convert.input_array[0] run function adventofcode:2015/day19/internal/convert_string/loop