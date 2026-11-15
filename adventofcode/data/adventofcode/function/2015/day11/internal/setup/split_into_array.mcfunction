data modify storage adventofcode:2015/day11 characters append value {}
data modify storage adventofcode:2015/day11 characters[-1].value.character set string storage adventofcode:2015/day11 input 0 1
data modify storage adventofcode:2015/day11 input set string storage adventofcode:2015/day11 input 1
function adventofcode:2015/day11/internal/update_value/set_number
function adventofcode:2015/day11/internal/checks/check_character
execute unless data storage adventofcode:2015/day11 {input: ""} run function adventofcode:2015/day11/internal/setup/split_into_array