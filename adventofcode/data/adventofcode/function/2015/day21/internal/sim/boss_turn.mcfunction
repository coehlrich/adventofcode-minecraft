data modify storage adventofcode:2015/day21 sim.player.hp set compute default integer adventofcode:2015/day21/sim/damage_player
execute if predicate adventofcode:2015/day21/sim/lose run return run function adventofcode:2015/day21/internal/sim/lose

function adventofcode:2015/day21/internal/sim/player_turn