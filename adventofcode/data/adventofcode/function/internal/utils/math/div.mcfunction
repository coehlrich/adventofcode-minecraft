data modify storage adventofcode:math/compare/is_zero in set from storage adventofcode:math/div in.b
execute if function adventofcode:internal/utils/math/compare/is_zero run return fail

data modify storage adventofcode:math/div bit set from storage adventofcode:math/constants 1
execute store result storage adventofcode:math/div negative int 1 if predicate adventofcode:math/div/negative
execute if predicate adventofcode:math/div/a_negative run function adventofcode:internal/utils/math/div/neg_a
execute if predicate adventofcode:math/div/b_negative run function adventofcode:internal/utils/math/div/neg_b
data modify storage adventofcode:math/div out.div set value []
function adventofcode:internal/utils/math/div/loop

execute unless data storage adventofcode:math/div out.div[63] run function adventofcode:internal/utils/math/div/pad_start

data modify storage adventofcode:math/div out.mod set from storage adventofcode:math/div in.a

execute if predicate adventofcode:math/div/result_negative run function adventofcode:internal/utils/math/div/neg_result