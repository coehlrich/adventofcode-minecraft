data modify storage adventofcode:2015 day09.current append value {}
data modify storage adventofcode:2015 day09.current[-1].locations set from storage adventofcode:2015 day09.current[-2].lookup_locations
data modify storage adventofcode:2015 day09.current[-1].lookup_locations set from storage adventofcode:2015 day09.current[-2].lookup_locations
data modify storage adventofcode:2015 day09.current[-1].location set from storage adventofcode:2015 day09.current[-2].next

data modify storage adventofcode:2015 day09.call.first set from storage adventofcode:2015 day09.current[-2].distance
$data modify storage adventofcode:2015 day09.call.second set from storage adventofcode:2015 day09.distances.$(current).$(next)
#$tellraw @a "Current: $(current)"
#$tellraw @a "Next: $(next)"
execute store result storage adventofcode:2015 day09.current[-1].distance int 1 run function adventofcode:internal/utils/operation/add with storage adventofcode:2015 day09.call
#tellraw @a {"storage": "adventofcode:2015", "nbt": "day09.current[-2].current_distances"}
#$tellraw @a "Next: $(next)"
#$tellraw @a {"storage": "adventofcode:2015", "nbt": "day09.current[-1].distances.$(next)"}
data modify storage adventofcode:2015 day09.current[-2].checked set value 1b
function adventofcode:2015/day09/internal/next_location
#$tellraw @a "Exiting: $(next)"
data remove storage adventofcode:2015 day09.current[-1]
#tellraw @a {"storage": "adventofcode:2015", "nbt": "day09.current[-1].locations"}

data remove storage adventofcode:2015 day09.current[-1].next
data modify storage adventofcode:2015 day09.current[-1].next set from storage adventofcode:2015 day09.current[-1].locations[0].location
data remove storage adventofcode:2015 day09.current[-1].locations[0]
data modify storage adventofcode:2015 day09.call.current set from storage adventofcode:2015 day09.current[-1].location
data modify storage adventofcode:2015 day09.call.next set from storage adventofcode:2015 day09.current[-1].next
execute if data storage adventofcode:2015 day09.current[-1].next run function adventofcode:2015/day09/internal/next_location/loop with storage adventofcode:2015 day09.call
