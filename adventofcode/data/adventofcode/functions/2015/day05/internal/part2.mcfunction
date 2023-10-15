data modify entity @s data.regex set value "([a-z][a-z])[a-z]*\\1"
execute store result entity @s data.result int 1 run function adventofcode:internal/utils/string/regex {regex: "entity @s data.regex", input: "entity @s data.current_input"}
execute if data entity @s data{result: 0} run return 0

data modify entity @s data.regex set value "([a-z])[a-z]\\1"
execute store result entity @s data.result int 1 run function adventofcode:internal/utils/string/regex {regex: "entity @s data.regex", input: "entity @s data.current_input"}
execute if data entity @s data{result: 0} run return 0
return 1