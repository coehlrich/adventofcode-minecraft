data modify storage adventofcode:2015 day11.previous_characters set from storage adventofcode:2015 day11.characters
data remove storage adventofcode:2015 day11.previous_characters[-1]
execute if data storage adventofcode:2015 day11.previous_characters[].value{character: "i"} run return 1
execute if data storage adventofcode:2015 day11.previous_characters[].value{character: "o"} run return 1
execute if data storage adventofcode:2015 day11.previous_characters[].value{character: "l"} run return 1
return 0