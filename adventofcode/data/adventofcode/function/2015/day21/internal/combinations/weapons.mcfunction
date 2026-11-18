data modify storage adventofcode:2015/day21 combinations.weapons append value []
data modify storage adventofcode:2015/day21 combinations.weapons[-1] append from storage adventofcode:2015/day21 shop.weapons[0]
data remove storage adventofcode:2015/day21 shop.weapons[0]
execute if data storage adventofcode:2015/day21 shop.weapons[0] run function adventofcode:2015/day21/internal/combinations/weapons