data modify storage adventofcode:math/div in.a set from storage adventofcode:math/to_number in
data modify storage adventofcode:math/div in.b set from storage adventofcode:math/constants 10
function adventofcode:internal/utils/math/div
data modify storage adventofcode:math/to_number in set from storage adventofcode:math/div out.div
data modify storage adventofcode:math/to_number current set from storage adventofcode:math/div out.mod
#tellraw @a {storage: "adventofcode:math/to_number", nbt: ""}

data modify storage adventofcode:math/compare/eq in.a set from storage adventofcode:math/to_number current 
data modify storage adventofcode:math/compare/eq in.b set from storage adventofcode:math/constants 0
execute if function adventofcode:internal/utils/math/compare/eq run data modify storage adventofcode:math/to_number out prepend value "0"

data modify storage adventofcode:math/compare/eq in.a set from storage adventofcode:math/to_number current 
data modify storage adventofcode:math/compare/eq in.b set from storage adventofcode:math/constants 1
execute if function adventofcode:internal/utils/math/compare/eq run data modify storage adventofcode:math/to_number out prepend value "1"

data modify storage adventofcode:math/compare/eq in.a set from storage adventofcode:math/to_number current 
data modify storage adventofcode:math/compare/eq in.b set from storage adventofcode:math/constants 2
execute if function adventofcode:internal/utils/math/compare/eq run data modify storage adventofcode:math/to_number out prepend value "2"

data modify storage adventofcode:math/compare/eq in.a set from storage adventofcode:math/to_number current 
data modify storage adventofcode:math/compare/eq in.b set from storage adventofcode:math/constants 3
execute if function adventofcode:internal/utils/math/compare/eq run data modify storage adventofcode:math/to_number out prepend value "3"

data modify storage adventofcode:math/compare/eq in.a set from storage adventofcode:math/to_number current 
data modify storage adventofcode:math/compare/eq in.b set from storage adventofcode:math/constants 4
execute if function adventofcode:internal/utils/math/compare/eq run data modify storage adventofcode:math/to_number out prepend value "4"

data modify storage adventofcode:math/compare/eq in.a set from storage adventofcode:math/to_number current 
data modify storage adventofcode:math/compare/eq in.b set from storage adventofcode:math/constants 5
execute if function adventofcode:internal/utils/math/compare/eq run data modify storage adventofcode:math/to_number out prepend value "5"

data modify storage adventofcode:math/compare/eq in.a set from storage adventofcode:math/to_number current 
data modify storage adventofcode:math/compare/eq in.b set from storage adventofcode:math/constants 6
execute if function adventofcode:internal/utils/math/compare/eq run data modify storage adventofcode:math/to_number out prepend value "6"

data modify storage adventofcode:math/compare/eq in.a set from storage adventofcode:math/to_number current 
data modify storage adventofcode:math/compare/eq in.b set from storage adventofcode:math/constants 7
execute if function adventofcode:internal/utils/math/compare/eq run data modify storage adventofcode:math/to_number out prepend value "7"

data modify storage adventofcode:math/compare/eq in.a set from storage adventofcode:math/to_number current 
data modify storage adventofcode:math/compare/eq in.b set from storage adventofcode:math/constants 8
execute if function adventofcode:internal/utils/math/compare/eq run data modify storage adventofcode:math/to_number out prepend value "8"

data modify storage adventofcode:math/compare/eq in.a set from storage adventofcode:math/to_number current 
data modify storage adventofcode:math/compare/eq in.b set from storage adventofcode:math/constants 9
execute if function adventofcode:internal/utils/math/compare/eq run data modify storage adventofcode:math/to_number out prepend value "9"

data modify storage adventofcode:math/compare/is_zero in set from storage adventofcode:math/to_number in
execute unless function adventofcode:internal/utils/math/compare/is_zero run function adventofcode:internal/utils/math/to_number/loop