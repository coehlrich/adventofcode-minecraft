data modify storage adventofcode:2015/day21 sim.boss.hp set compute default integer adventofcode:2015/day21/sim/damage_boss
execute if predicate adventofcode:2015/day21/sim/win run return run function adventofcode:2015/day21/internal/sim/win

function adventofcode:2015/day21/internal/sim/boss_turn