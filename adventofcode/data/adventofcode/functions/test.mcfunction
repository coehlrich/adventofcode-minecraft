data modify storage adventofcode:test testoutput set value 2
scoreboard players set @s adventofcode 1000
tellraw @a {"storage": "adventofcode:test", "nbt":"int"}
scoreboard players set @s adventofcode 1000000
return run data get storage adventofcode:test testoutput
#return 5000