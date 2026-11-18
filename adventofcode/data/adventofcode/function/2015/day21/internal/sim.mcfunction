data modify storage adventofcode:2015/day21 sim.boss set from storage adventofcode:2015/day21 boss

data modify storage adventofcode:2015/day21 sim.player.hp set value 100
data modify storage adventofcode:2015/day21 sim.player.cost set value 0
data modify storage adventofcode:2015/day21 sim.player.damage set value 0
data modify storage adventofcode:2015/day21 sim.player.armor set value 0

data modify storage adventofcode:2015/day21 sim.option set from storage adventofcode:2015/day21 options[0]
data remove storage adventofcode:2015/day21 options[0]

function adventofcode:2015/day21/internal/sim/add_gear

function adventofcode:2015/day21/internal/sim/player_turn

execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day21 options
execute unless data storage adventofcode:2015/day21 options[0] run function adventofcode:2015/day21/internal/finish
execute if data storage adventofcode:2015/day21 options[0] run schedule function adventofcode:2015/day21/internal/sim 1t replace