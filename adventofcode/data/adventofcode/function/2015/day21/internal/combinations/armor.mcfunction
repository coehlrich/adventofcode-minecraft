data modify storage adventofcode:2015/day21 combinations.tmp.armor_combinations set from storage adventofcode:2015/day21 combinations.weapons
data modify storage adventofcode:2015/day21 combinations.tmp.armor_combinations[] append from storage adventofcode:2015/day21 shop.armor[0]
data modify storage adventofcode:2015/day21 combinations.armor append from storage adventofcode:2015/day21 combinations.tmp.armor_combinations[]
data remove storage adventofcode:2015/day21 shop.armor[0]
execute if data storage adventofcode:2015/day21 shop.armor[0] run function adventofcode:2015/day21/internal/combinations/armor