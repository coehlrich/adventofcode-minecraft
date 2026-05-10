data modify storage adventofcode:math/to_number in set from storage adventofcode:2015/day01 step
function adventofcode:internal/utils/math/to_number
data modify storage adventofcode:2015/day01 result.part2 set from storage adventofcode:math/to_number out

#tellraw @a {storage: "adventofcode:2015/day01", nbt: "step"}