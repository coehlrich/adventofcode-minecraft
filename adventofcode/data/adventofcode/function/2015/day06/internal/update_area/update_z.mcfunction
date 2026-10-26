
execute positioned ~ ~-1 ~ run function adventofcode:2015/day06/internal/update_area/part1/run_instruction
execute positioned ~ ~101 ~ run function adventofcode:2015/day06/internal/update_area/part2/run_instruction
data modify storage adventofcode:2015/day06 pos.z set compute default integer adventofcode:2015/day06/increment_z
execute if predicate adventofcode:2015/day06/continue_z positioned ~ ~ ~1 run function adventofcode:2015/day06/internal/update_area/update_z