function adventofcode:2015/day21/input
data modify storage adventofcode:math/from_number in set string storage adventofcode:2015/day21 input[0] 12
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day21 boss.hp set from storage adventofcode:math/from_number out.number

data modify storage adventofcode:math/from_number in set string storage adventofcode:2015/day21 input[1] 8
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day21 boss.damage set from storage adventofcode:math/from_number out.number

data modify storage adventofcode:math/from_number in set string storage adventofcode:2015/day21 input[2] 7
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day21 boss.armor set from storage adventofcode:math/from_number out.number

data modify storage adventofcode:2015/day21 shop.weapons set value [{cost: 8, damage: 4},{cost: 10, damage: 5},{cost: 25, damage: 6},{cost: 40, damage: 7},{cost: 74, damage: 8}]
data modify storage adventofcode:2015/day21 shop.armor set value [{cost: 13, armor: 1},{cost: 31, armor: 2},{cost: 53, armor: 3},{cost: 75, armor: 4},{cost: 102, armor: 5}]
data modify storage adventofcode:2015/day21 shop.rings set value [{cost: 25, damage: 1},{cost: 50, damage: 2},{cost: 100, damage: 3},{cost: 20, armor: 1},{cost: 40, armor: 2},{cost: 80, armor: 3}]

data modify storage adventofcode:2015/day21 combinations.weapons set value []
function adventofcode:2015/day21/internal/combinations/weapons

data modify storage adventofcode:2015/day21 combinations.armor set from storage adventofcode:2015/day21 combinations.weapons
function adventofcode:2015/day21/internal/combinations/armor

data modify storage adventofcode:2015/day21 combinations.rings set from storage adventofcode:2015/day21 combinations.armor
function adventofcode:2015/day21/internal/combinations/rings

data modify storage adventofcode:2015/day21 options set from storage adventofcode:2015/day21 combinations.rings
execute store result bossbar adventofcode:progress max run data get storage adventofcode:2015/day21 options
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day21 options
data modify storage adventofcode:2015/day21 result.part1 set value 2147483647
data modify storage adventofcode:2015/day21 result.part2 set value 0
schedule function adventofcode:2015/day21/internal/sim 1t replace