data modify storage adventofcode:2015/day04 md5.output append compute default integer adventofcode:2015/day04/md5/get_output
data modify storage adventofcode:2015/day04 md5.current_output.value set compute default integer adventofcode:2015/day04/md5/next_output

data modify storage adventofcode:2015/day04 md5.current_output.index set compute default integer adventofcode:2015/day04/md5/increment_output_index
execute if predicate adventofcode:2015/day04/md5/continue_output_int run function adventofcode:2015/day04/internal/md5/create_output