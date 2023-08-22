data modify entity @s data.call set value {output: "entity @s data.current.measurement", input: "entity @s data.current.input"}
data modify entity @s data.call.start set from entity @s data.current.start
data modify entity @s data.call.end set from entity @s data.current.position
function adventofcode:internal/utils/substring with entity @s data.call
data modify entity @s data.current.parsed append from entity @s data.current.measurement
data modify entity @s data.current.start set from entity @s data.current.position_plus_one