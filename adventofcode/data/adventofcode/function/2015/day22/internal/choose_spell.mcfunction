execute unless data storage adventofcode:2015/day22 stack[-1].spells[0] run return run function adventofcode:2015/day22/internal/pop

data modify storage adventofcode:2015/day22 stack[-1].spell set from storage adventofcode:2015/day22 stack[-1].spells[0]
data remove storage adventofcode:2015/day22 stack[-1].spells[0]

execute unless function adventofcode:2015/day22/internal/can_use_spell run return run function adventofcode:2015/day22/internal/choose_spell

data modify storage adventofcode:2015/day22 stack append from storage adventofcode:2015/day22 stack[-1]
data modify storage adventofcode:2015/day22 stack[-1].spells set from storage adventofcode:2015/day22 spells
data modify storage adventofcode:2015/day22 stack[-1].player.mana set compute default integer adventofcode:2015/day22/use_mana
data modify storage adventofcode:2015/day22 stack[-1].used_mana set compute default integer adventofcode:2015/day22/used_mana
execute if data storage adventofcode:2015/day22 stack[-1].spell.damage run data modify storage adventofcode:2015/day22 stack[-1].boss.hp set compute default integer adventofcode:2015/day22/damage_boss
execute if data storage adventofcode:2015/day22 stack[-1].spell.heal run data modify storage adventofcode:2015/day22 stack[-1].player.hp set compute default integer adventofcode:2015/day22/heal_player
execute if data storage adventofcode:2015/day22 stack[-1].spell.effect run function adventofcode:2015/day22/internal/add_effect with storage adventofcode:2015/day22 stack[-1].spell.effect

execute if predicate adventofcode:2015/day22/win run return run function adventofcode:2015/day22/internal/win
function adventofcode:2015/day22/internal/boss_turn