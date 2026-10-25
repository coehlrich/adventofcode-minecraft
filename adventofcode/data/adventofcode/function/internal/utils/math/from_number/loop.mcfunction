execute if data storage adventofcode:math/from_number out{remaining: ""} run return 0

data modify storage adventofcode:math/from_number current_char set string storage adventofcode:math/from_number out.remaining 0 1
function adventofcode:internal/utils/math/from_number/check_number
execute if data storage adventofcode:math/from_number {current_num: -1} run return 0

data modify storage adventofcode:math/from_number out.remaining set string storage adventofcode:math/from_number out.remaining 1

data modify storage adventofcode:math/from_number out.number set compute default integer adventofcode:math/from_number/add_next

function adventofcode:internal/utils/math/from_number/loop