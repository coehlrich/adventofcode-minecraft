data modify storage adventofcode:math/from_number out.number set value 0
data modify storage adventofcode:math/from_number out.remaining set from storage adventofcode:math/from_number in
data modify storage adventofcode:math/from_number negative set value false
data modify storage adventofcode:math/from_number current_char set string storage adventofcode:math/from_number out.remaining 0 1
execute if data storage adventofcode:math/from_number {current_char: "-"} run data modify storage adventofcode:math/from_number negative set value true
execute if data storage adventofcode:math/from_number {negative: true} run data modify storage adventofcode:math/from_number out.remaining set string storage adventofcode:math/from_number out.remaining 1

function adventofcode:internal/utils/math/from_number/loop

execute if data storage adventofcode:math/from_number {negative: true} store result storage adventofcode:math/from_number out.number int 1 run number adventofcode:math/from_number/negative