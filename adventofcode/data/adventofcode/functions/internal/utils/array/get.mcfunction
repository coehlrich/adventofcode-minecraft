#$data modify storage adventofcode:array/get output set from $(array)[$(index)]
#tellraw @a {"storage": "adventofcode:array/get", "nbt": "output"}
#return run data get storage adventofcode:array/get output
$return run data get $(array)[$(index)]