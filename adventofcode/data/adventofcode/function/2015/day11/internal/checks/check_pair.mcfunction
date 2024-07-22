data modify storage adventofcode:2015 day11.characters[-1].value.pair set value 0
execute unless data storage adventofcode:2015 day11.characters[-2] run return 0
data modify storage adventofcode:2015 day11.check_equal set from storage adventofcode:2015 day11.characters[-2].value.character
execute store result storage adventofcode:2015 day11.result int 1 run data modify storage adventofcode:2015 day11.check_equal set from storage adventofcode:2015 day11.characters[-1].value.character
execute if data storage adventofcode:2015 day11{result: 1} run return 0
data modify storage adventofcode:2015 day11.previous_characters set from storage adventofcode:2015 day11.characters
data remove storage adventofcode:2015 day11.previous_characters[-1]
data remove storage adventofcode:2015 day11.previous_characters[-1]
execute if data storage adventofcode:2015 day11.previous_characters[].value{pair: 1} run data modify storage adventofcode:2015 day11.characters[-1].value.pair set value 2
execute unless data storage adventofcode:2015 day11.previous_characters[].value{pair: 1} run data modify storage adventofcode:2015 day11.characters[-1].value.pair set value 1