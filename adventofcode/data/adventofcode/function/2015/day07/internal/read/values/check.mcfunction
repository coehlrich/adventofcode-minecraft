data remove storage adventofcode:2015 day07.value.output
data modify storage adventofcode:string/regex current.input set from storage adventofcode:2015 day07.value.input
data modify storage adventofcode:string/regex current.regex set value "[0-9]"
execute if function adventofcode:internal/utils/string/regex_set run return run function adventofcode:2015/day07/internal/read/values/direct
return run function adventofcode:2015/day07/internal/read/values/reference