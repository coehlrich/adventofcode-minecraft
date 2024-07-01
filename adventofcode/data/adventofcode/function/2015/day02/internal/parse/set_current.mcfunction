data modify entity @s data.current.input set from entity @s data.input[0]
data remove entity @s data.input[0]
data modify entity @s data.current.parsed set value []
data modify entity @s data.current.position set value 0
data modify entity @s data.current.previous_end set value 0
data modify entity @s data.current.start set value 0
execute store result entity @s data.current.end int 1 run data get entity @s data.current.input