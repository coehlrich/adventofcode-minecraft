data modify storage adventofcode:math/compare/gt in.a set from storage adventofcode:math/div in.a
data modify storage adventofcode:math/compare/gt in.b set from storage adventofcode:math/div in.b
execute if function adventofcode:internal/utils/math/compare/gt/loop unless predicate adventofcode:math/div/greatest_bit_set run function adventofcode:internal/utils/math/div/shift

data modify storage adventofcode:math/div out.div append value 0

data modify storage adventofcode:math/compare/gte in.a set from storage adventofcode:math/div in.a
data modify storage adventofcode:math/compare/gte in.b set from storage adventofcode:math/div in.b
#tellraw @a "-------------------------------------------"
#tellraw @a {storage: "adventofcode:math/compare/gte", nbt: "in"}
execute if function adventofcode:internal/utils/math/compare/gte/loop run function adventofcode:internal/utils/math/div/set

#tellraw @a {storage: "adventofcode:math/div", nbt: "in"}