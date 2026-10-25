execute if predicate adventofcode:2015/day05/is_vowel run data modify storage adventofcode:2015/day05 current.vowel set compute default integer adventofcode:2015/day05/increment_vowel
execute if predicate adventofcode:2015/day05/is_repeated run data modify storage adventofcode:2015/day05 current.repeated set value 1
execute if predicate adventofcode:2015/day05/is_combo run data modify storage adventofcode:2015/day05 current.combo set value 1
execute if predicate adventofcode:2015/day05/is_repeated_with_one run data modify storage adventofcode:2015/day05 current.repeated_with_one set value 1

data modify storage adventofcode:2015/day05 current.check_pairs set from storage adventofcode:2015/day05 current.pairs

execute if data storage adventofcode:2015/day05 current.pair run data modify storage adventofcode:2015/day05 current.pairs append from storage adventofcode:2015/day05 current.pair
data modify storage adventofcode:2015/day05 current.pair set compute default integer adventofcode:2015/day05/pair_value
execute unless data storage adventofcode:2015/day05 current.repeated_pair if function adventofcode:2015/day05/internal/pair_repeated run data modify storage adventofcode:2015/day05 current.pair_repeated set value 1

data remove storage adventofcode:2015/day05 current.input[0]
execute if data storage adventofcode:2015/day05 current.input[0] run function adventofcode:2015/day05/internal/check