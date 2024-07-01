data modify entity @s data.call.first set value 0
execute store result entity @s data.call.second int 1 run function adventofcode:internal/utils/string/contains {input: "entity @s data.current_input", contains: "a"}
execute store result entity @s data.call.first int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call
execute store result entity @s data.call.second int 1 run function adventofcode:internal/utils/string/contains {input: "entity @s data.current_input", contains: "e"}
execute store result entity @s data.call.first int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call
execute store result entity @s data.call.second int 1 run function adventofcode:internal/utils/string/contains {input: "entity @s data.current_input", contains: "i"}
execute store result entity @s data.call.first int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call
execute store result entity @s data.call.second int 1 run function adventofcode:internal/utils/string/contains {input: "entity @s data.current_input", contains: "o"}
execute store result entity @s data.call.first int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call
execute store result entity @s data.call.second int 1 run function adventofcode:internal/utils/string/contains {input: "entity @s data.current_input", contains: "u"}

execute store result entity @s data.current_vowels int 1 run function adventofcode:internal/utils/operation/add with entity @s data.call
data modify entity @s data.call set value {comparison: 3}
data modify entity @s data.call.value set from entity @s data.current_vowels
execute store result entity @s data.result int 1 run function adventofcode:internal/utils/compare/greater_than_or_equal with entity @s data.call
execute if data entity @s data{result: 0} run return 0

data modify entity @s data.regex set value "([a-z])\\1"
execute store result entity @s data.result int 1 run function adventofcode:internal/utils/string/regex {regex: "entity @s data.regex", input: "entity @s data.current_input"}
execute if data entity @s data{result: 0} run return 0

execute store result entity @s data.result int 1 run function adventofcode:internal/utils/string/contains {input: "entity @s data.current_input", contains: "ab"}
execute if data entity @s data{result: 1} run return 0
execute store result entity @s data.result int 1 run function adventofcode:internal/utils/string/contains {input: "entity @s data.current_input", contains: "cd"}
execute if data entity @s data{result: 1} run return 0
execute store result entity @s data.result int 1 run function adventofcode:internal/utils/string/contains {input: "entity @s data.current_input", contains: "pq"}
execute if data entity @s data{result: 1} run return 0
execute store result entity @s data.result int 1 run function adventofcode:internal/utils/string/contains {input: "entity @s data.current_input", contains: "xy"}
execute if data entity @s data{result: 1} run return 0
return 1