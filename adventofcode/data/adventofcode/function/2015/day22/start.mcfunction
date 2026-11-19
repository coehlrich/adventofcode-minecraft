function adventofcode:2015/day22/input
data modify storage adventofcode:math/from_number in set string storage adventofcode:2015/day22 input[0] 12
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day22 boss.hp set from storage adventofcode:math/from_number out.number

data modify storage adventofcode:math/from_number in set string storage adventofcode:2015/day22 input[1] 8
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day22 boss.damage set from storage adventofcode:math/from_number out.number

bossbar set adventofcode:progress max 100
data modify storage adventofcode:2015/day22 tick set value 0
data modify storage adventofcode:2015/day22 spells set value [{cost: 53, damage: 4}, {cost: 73, damage: 2, heal: 2}, {cost: 113, effect: {type: "shield", turns: 6}}, {cost: 173, effect: {type: "poison", turns: 6}}, {cost: 229, effect: {type: "recharge", turns: 5}}]
data remove storage adventofcode:2015/day22 result
data remove storage adventofcode:2015/day22 hard_mode

data modify storage adventofcode:2015/day22 min_mana set value 2147483647
data modify storage adventofcode:2015/day22 stack set value [{player: {hp: 50, mana: 500}, effects: {shield: 0, poison: 0, recharge: 0}, used_mana: 0}]
data modify storage adventofcode:2015/day22 stack[-1].boss set from storage adventofcode:2015/day22 boss
data modify storage adventofcode:2015/day22 stack[-1].spells set from storage adventofcode:2015/day22 spells
function adventofcode:2015/day22/internal/player_turn