execute if data storage adventofcode:2015/day21 sim.option[0].cost run data modify storage adventofcode:2015/day21 sim.player.cost set compute default integer adventofcode:2015/day21/sim/add_cost
execute if data storage adventofcode:2015/day21 sim.option[0].damage run data modify storage adventofcode:2015/day21 sim.player.damage set compute default integer adventofcode:2015/day21/sim/add_damage
execute if data storage adventofcode:2015/day21 sim.option[0].armor run data modify storage adventofcode:2015/day21 sim.player.armor set compute default integer adventofcode:2015/day21/sim/add_armor
data remove storage adventofcode:2015/day21 sim.option[0]
execute if data storage adventofcode:2015/day21 sim.option[0] run function adventofcode:2015/day21/internal/sim/add_gear