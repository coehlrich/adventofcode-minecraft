data modify storage adventofcode:2015/day22 result.part1 set from storage adventofcode:2015/day22 min_mana
data modify storage adventofcode:2015/day22 hard_mode set value 1
data modify storage adventofcode:2015/day22 min_mana set value 2147483647
data modify storage adventofcode:2015/day22 stack set value [{player: {hp: 50, mana: 500}, effects: {shield: 0, poison: 0, recharge: 0}, used_mana: 0}]
data modify storage adventofcode:2015/day22 stack[-1].boss set from storage adventofcode:2015/day22 boss
data modify storage adventofcode:2015/day22 stack[-1].spells set from storage adventofcode:2015/day22 spells
function adventofcode:2015/day22/internal/player_turn