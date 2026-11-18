data modify storage adventofcode:2015/day21 combinations.tmp.rings_combinations set from storage adventofcode:2015/day21 combinations.armor
$data modify storage adventofcode:2015/day21 combinations.tmp.rings_combinations[] append from storage adventofcode:2015/day21 shop.rings[$(rings_index1)]
$data modify storage adventofcode:2015/day21 combinations.tmp.rings_combinations[] append from storage adventofcode:2015/day21 shop.rings[$(rings_index2)]
data modify storage adventofcode:2015/day21 combinations.rings append from storage adventofcode:2015/day21 combinations.tmp.rings_combinations[]