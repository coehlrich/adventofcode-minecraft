function adventofcode:2015/day11/internal/increment_string
function adventofcode:2015/day11/internal/checks/check_tick
execute as @e[tag=2015-day11] run data merge entity @s {text: '{"storage": "adventofcode:2015", "nbt": "day11.characters[].value.character", "separator": ""}', billboard: "center"}
execute if function adventofcode:2015/day11/internal/checks/can_finish if data storage adventofcode:2015 day11.output.part1 run data modify storage adventofcode:2015 day11.output.part2 set from storage adventofcode:2015 day11.characters
execute if function adventofcode:2015/day11/internal/checks/can_finish unless data storage adventofcode:2015 day11.output.part1 run data modify storage adventofcode:2015 day11.output.part1 set from storage adventofcode:2015 day11.characters
execute if data storage adventofcode:2015 day11.output.part2 run return run function adventofcode:2015/day11/internal/finish
function adventofcode:internal/utils/operation/increment {input: "storage adventofcode:2015 day11.loop_index"}
execute unless predicate adventofcode:2015/day11/finished_loop run return run function adventofcode:2015/day11/internal/tick
return 0
#function adventofcode:2015/day11/internal/tick