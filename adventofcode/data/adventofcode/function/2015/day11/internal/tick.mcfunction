function adventofcode:2015/day11/internal/increment
title @a actionbar {"storage": "adventofcode:2015/day11", "nbt": "characters[].value.character", "separator": "", interpret: true}
execute if function adventofcode:2015/day11/internal/checks/can_finish if data storage adventofcode:2015/day11 result.part1 run data modify storage adventofcode:2015/day11 result.part2 set from storage adventofcode:2015/day11 characters
execute if function adventofcode:2015/day11/internal/checks/can_finish unless data storage adventofcode:2015/day11 result.part1 run data modify storage adventofcode:2015/day11 result.part1 set from storage adventofcode:2015/day11 characters
execute if data storage adventofcode:2015/day11 result.part2 run return run function adventofcode:2015/day11/internal/finish
execute unless data storage adventofcode:2015/day11 characters[-1].value{character: "z"} run function adventofcode:2015/day11/internal/tick
execute if data storage adventofcode:2015/day11 characters[-1].value{character: "z"} run schedule function adventofcode:2015/day11/internal/tick 1t