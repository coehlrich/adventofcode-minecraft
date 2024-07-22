data modify storage adventofcode:2015 day11.characters append value {}
data modify storage adventofcode:2015 day11.characters[-1].value.character set string storage adventofcode:2015 day11.string 0 1
data modify storage adventofcode:2015 day11.string set string storage adventofcode:2015 day11.string 1
function adventofcode:2015/day11/internal/checks/check_tick
execute unless data storage adventofcode:2015 day11{string: ""} run function adventofcode:2015/day11/internal/append_character