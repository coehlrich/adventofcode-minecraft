execute unless predicate adventofcode:2015/day22/has_required_mana run return 0
execute if predicate adventofcode:2015/day22/over_min_mana run return 0
execute if data storage adventofcode:2015/day22 stack[-1].spell.effect{type: "shield"} unless data storage adventofcode:2015/day22 stack[-1].effects{shield: 0} run return 0
execute if data storage adventofcode:2015/day22 stack[-1].spell.effect{type: "poison"} unless data storage adventofcode:2015/day22 stack[-1].effects{poison: 0} run return 0
execute if data storage adventofcode:2015/day22 stack[-1].spell.effect{type: "recharge"} unless data storage adventofcode:2015/day22 stack[-1].effects{recharge: 0} run return 0
return 1