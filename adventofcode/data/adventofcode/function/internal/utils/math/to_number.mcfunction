data modify storage adventofcode:math/to_number out set value []
execute store result storage adventofcode:math/to_number negative int 1 if predicate adventofcode:math/to_number/is_negative
execute if predicate adventofcode:math/to_number/result_negative run data modify storage adventofcode:math/neg in set from storage adventofcode:math/to_number in
execute if predicate adventofcode:math/to_number/result_negative run function adventofcode:internal/utils/math/neg
execute if predicate adventofcode:math/to_number/result_negative run data modify storage adventofcode:math/to_number in set from storage adventofcode:math/neg out

function adventofcode:internal/utils/math/to_number/loop

execute if predicate adventofcode:math/to_number/result_negative run data modify storage adventofcode:math/to_number out prepend value "-"