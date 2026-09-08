execute if data storage adventofcode:2015/day03 {current-char:"^"} run tp @s ~ ~ ~-1
execute if data storage adventofcode:2015/day03 {current-char:">"} run tp @s ~1 ~ ~
execute if data storage adventofcode:2015/day03 {current-char:"v"} run tp @s ~ ~ ~1
execute if data storage adventofcode:2015/day03 {current-char:"<"} run tp @s ~-1 ~ ~
return run execute at @s run setblock ~ ~ ~ minecraft:white_concrete