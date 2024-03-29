data modify storage adventofcode:string/regex current.input set from storage adventofcode:2015 day07.input[0]
data remove storage adventofcode:2015 day07.input[0]

data modify storage adventofcode:string/regex current.regex set value "^([0-9a-z]+) -> ([a-z]+)"
execute if function adventofcode:internal/utils/string/regex_set run return run function adventofcode:2015/day07/internal/read/operations/direct

data modify storage adventofcode:string/regex current.regex set value "^([0-9a-z]+) AND ([0-9a-z]+) -> ([a-z]+)"
execute if function adventofcode:internal/utils/string/regex_set run return run function adventofcode:2015/day07/internal/read/operations/and

data modify storage adventofcode:string/regex current.regex set value "^([0-9a-z]+) OR ([0-9a-z]+) -> ([a-z]+)"
execute if function adventofcode:internal/utils/string/regex_set run return run function adventofcode:2015/day07/internal/read/operations/or

data modify storage adventofcode:string/regex current.regex set value "^([0-9a-z]+) LSHIFT ([0-9]+) -> ([a-z]+)"
execute if function adventofcode:internal/utils/string/regex_set run return run function adventofcode:2015/day07/internal/read/operations/left_shift

data modify storage adventofcode:string/regex current.regex set value "^([0-9a-z]+) RSHIFT ([0-9]+) -> ([a-z]+)"
execute if function adventofcode:internal/utils/string/regex_set run return run function adventofcode:2015/day07/internal/read/operations/right_shift

data modify storage adventofcode:string/regex current.regex set value "^NOT ([0-9a-z]+) -> ([a-z]+)"
execute if function adventofcode:internal/utils/string/regex_set run return run function adventofcode:2015/day07/internal/read/operations/not