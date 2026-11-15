execute if data storage adventofcode:2015/day11 characters[].value{character: "i"} run return 0
execute if data storage adventofcode:2015/day11 characters[].value{character: "o"} run return 0
execute if data storage adventofcode:2015/day11 characters[].value{character: "l"} run return 0
execute unless data storage adventofcode:2015/day11 characters[].check{increasing: 3} run return 0
execute unless data storage adventofcode:2015/day11 characters[].check{pairs: 2} run return 0
return 1