execute if data storage adventofcode:2015 day11.characters[-1].value{character: "a"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "b"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "b"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "c"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "c"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "d"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "d"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "e"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "e"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "f"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "f"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "g"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "g"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "h"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "h"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "i"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "i"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "j"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "j"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "k"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "k"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "l"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "l"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "m"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "m"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "n"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "n"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "o"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "o"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "p"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "p"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "q"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "q"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "r"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "r"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "s"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "s"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "t"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "t"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "u"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "u"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "v"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "v"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "w"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "w"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "x"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "x"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "y"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "y"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "z"
execute if data storage adventofcode:2015 day11.characters[-1].value{character: "z"} run data modify storage adventofcode:2015 day11.characters[-1].value.incremented_character set value "~"
data modify storage adventofcode:2015 day11.characters[-1].value.incremented_count set value 1
execute unless data storage adventofcode:2015 day11.characters[-2] run return 0
data modify storage adventofcode:2015 day11.check_equal set from storage adventofcode:2015 day11.characters[-2].value.incremented_character
execute store result storage adventofcode:2015 day11.result int 1 run data modify storage adventofcode:2015 day11.check_equal set from storage adventofcode:2015 day11.characters[-1].value.character
execute if data storage adventofcode:2015 day11{result: 1} run return 0
data modify storage adventofcode:2015 day11.characters[-1].value.incremented_count set from storage adventofcode:2015 day11.characters[-2].value.incremented_count
function adventofcode:internal/utils/operation/increment {input: "storage adventofcode:2015 day11.characters[-1].value.incremented_count"}