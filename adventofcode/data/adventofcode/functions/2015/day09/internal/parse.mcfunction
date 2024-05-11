data modify storage adventofcode:string/regex current.input set from storage adventofcode:2015 day09.line
data modify storage adventofcode:string/regex current.regex set value "([A-Za-z]+) to ([A-Za-z]+) = ([0-9]+)"
function adventofcode:internal/utils/string/regex_set
data modify storage adventofcode:2015 day09.call.start set from storage adventofcode:string/regex output.groups[1].text
data modify storage adventofcode:2015 day09.call.end set from storage adventofcode:string/regex output.groups[2].text
data modify storage adventofcode:2015 day09.call.distance set from storage adventofcode:string/regex output.groups[3].text
function adventofcode:2015/day09/internal/store_distance with storage adventofcode:2015 day09.call
#execute store result storage adventofcode:is_success result int 1 run data modify storage adventofcode:2015 day09.parsing.current set from storage adventofcode:string/regex
#execute if predicate adventofcode:operation/is_success run function adventofcode:2015/day09/internal/increment_index
#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "output"}