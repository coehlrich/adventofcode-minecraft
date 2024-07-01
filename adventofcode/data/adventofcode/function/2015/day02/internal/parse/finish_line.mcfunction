function adventofcode:2015/day02/internal/parse/append_current
data modify entity @s data.parsed append from entity @s data.current.parsed
data remove entity @s data.current
execute unless data entity @s data.input[0] run tag @s add 2015-day02-parsed