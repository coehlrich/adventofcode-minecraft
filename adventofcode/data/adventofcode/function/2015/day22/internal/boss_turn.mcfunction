function adventofcode:2015/day22/internal/apply_effects
data modify storage adventofcode:2015/day22 stack[-1].player.hp set compute default integer adventofcode:2015/day22/damage_player
execute if predicate adventofcode:2015/day22/lose run return run function adventofcode:2015/day22/internal/pop
function adventofcode:2015/day22/internal/player_turn