data modify storage adventofcode:2015/day20 house.number set compute default integer adventofcode:2015/day20/increment_house_number

title @a actionbar {storage: "adventofcode:2015/day20", nbt: "house.number"}

data modify storage adventofcode:2015/day20 house.part1 set value 0
data modify storage adventofcode:2015/day20 house.part2 set value 0
data modify storage adventofcode:2015/day20 house.value set value 1
execute if predicate adventofcode:2015/day20/can_continue run function adventofcode:2015/day20/internal/loop
execute if predicate adventofcode:2015/day20/perfect_square run data modify storage adventofcode:2015/day20 house.part1 set compute default integer adventofcode:2015/day20/perfect_square_visit_part1
execute unless data storage adventofcode:2015/day20 result.part1 if predicate adventofcode:2015/day20/finish_part1 run data modify storage adventofcode:2015/day20 result.part1 set from storage adventofcode:2015/day20 house.number
execute unless data storage adventofcode:2015/day20 result.part2 if predicate adventofcode:2015/day20/finish_part2 run data modify storage adventofcode:2015/day20 result.part2 set from storage adventofcode:2015/day20 house.number

execute if data storage adventofcode:2015/day20 result.part1 if data storage adventofcode:2015/day20 result.part2 run return run function adventofcode:2015/day20/internal/finish

execute if predicate adventofcode:2015/day20/next_tick run return run schedule function adventofcode:2015/day20/internal/tick 1t replace
function adventofcode:2015/day20/internal/tick