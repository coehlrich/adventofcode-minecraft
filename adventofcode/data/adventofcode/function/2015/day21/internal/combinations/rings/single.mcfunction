data modify storage adventofcode:2015/day21 combinations.tmp.rings_combinations set from storage adventofcode:2015/day21 combinations.armor
data modify storage adventofcode:2015/day21 combinations.tmp.rings_combinations[] append from storage adventofcode:2015/day21 combinations.tmp.rings[0]
data modify storage adventofcode:2015/day21 combinations.rings append from storage adventofcode:2015/day21 combinations.tmp.rings_combinations[]
data remove storage adventofcode:2015/day21 combinations.tmp.rings[0]
execute if data storage adventofcode:2015/day21 combinations.tmp.rings[0] run function adventofcode:2015/day21/internal/combinations/rings/single