execute if data storage adventofcode:2015 {day03:{internal:{current-char:"^"}}} run tp @s ~ ~ ~-1
execute if data storage adventofcode:2015 {day03:{internal:{current-char:">"}}} run tp @s ~1 ~ ~
execute if data storage adventofcode:2015 {day03:{internal:{current-char:"v"}}} run tp @s ~ ~ ~1
execute if data storage adventofcode:2015 {day03:{internal:{current-char:"<"}}} run tp @s ~-1 ~ ~
execute store result storage adventofcode:2015 day03.internal.placed int 1 at @s run setblock ~ ~ ~ minecraft:white_concrete
execute if data storage adventofcode:2015 {day03:{internal:{placed:1}}} run return 1
return 0