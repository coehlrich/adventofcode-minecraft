data modify storage adventofcode:2015 day08.call.first set from storage adventofcode:2015 day08.output.part2
data modify storage adventofcode:2015 day08.call.second set value 2
execute store result storage adventofcode:2015 day08.output.part2 int 1 run function adventofcode:internal/utils/operation/add with storage adventofcode:2015 day08.call

execute store result storage adventofcode:2015 day08.line_length int 1 run data get storage adventofcode:2015 day08.line
execute unless predicate adventofcode:2015/day08/finished_line run function adventofcode:2015/day08/internal/part2/loop