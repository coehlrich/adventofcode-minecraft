data modify storage adventofcode:2015 day09.current[-1].location set from storage adventofcode:2015 day09.current[-1].locations[0].location
data remove storage adventofcode:2015 day09.current[-1].locations[0]

data modify storage adventofcode:2015 day09.current append value {}
data modify storage adventofcode:2015 day09.current[-1].lookup_locations set from storage adventofcode:2015 day09.locations
data modify storage adventofcode:2015 day09.current[-1].location set from storage adventofcode:2015 day09.current[-2].location
data modify storage adventofcode:2015 day09.current[-1].distance set value 0

tellraw @a {"storage": "adventofcode:2015", "nbt": "day09.current[-2].location"}
function adventofcode:2015/day09/internal/next_location
tellraw @a {"storage": "adventofcode:2015", "nbt": "day09.current[-2].location"}

data remove storage adventofcode:2015 day09.current[-1]
#tellraw @a {"storage": "adventofcode:2015", "nbt": "day09.current[-1]"}
execute if data storage adventofcode:2015 day09.current[-1].locations[0] run schedule function adventofcode:2015/day09/internal/start_loop 1t replace
execute unless data storage adventofcode:2015 day09.current[-1].locations[0] run function adventofcode:2015/day09/internal/finish