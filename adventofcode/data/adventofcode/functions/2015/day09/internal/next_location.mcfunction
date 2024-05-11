data modify storage adventofcode:2015 day09.call.current set from storage adventofcode:2015 day09.current[-1].location
function adventofcode:2015/day09/internal/next_location/remove_distance with storage adventofcode:2015 day09.call
data modify storage adventofcode:2015 day09.current[-1].locations set from storage adventofcode:2015 day09.current[-1].lookup_locations
#execute unless data storage adventofcode:2015 day09.current[-1].checked run tellraw @a {"storage": "adventofcode:2015", "nbt": "day09.current[-1].lookup_locations"}
#execute unless data storage adventofcode:2015 day09.current[-1].checked run tellraw @a {"storage": "adventofcode:2015", "nbt": "day09.call.current"}
data modify storage adventofcode:2015 day09.current[-1].next set from storage adventofcode:2015 day09.current[-1].locations[0].location
data remove storage adventofcode:2015 day09.current[-1].locations[0]
data modify storage adventofcode:2015 day09.call.current set from storage adventofcode:2015 day09.current[-1].location
data modify storage adventofcode:2015 day09.call.next set from storage adventofcode:2015 day09.current[-1].next
#execute unless data storage adventofcode:2015 day09.current[-1].checked run tellraw @a {"storage": "adventofcode:2015", "nbt": "day09.current[-1].distances"}
#execute unless data storage adventofcode:2015 day09.current[-1].checked run tellraw @a {"storage": "adventofcode:2015", "nbt": "day09.current[-1].distance"}
execute if data storage adventofcode:2015 day09.current[-1].next run function adventofcode:2015/day09/internal/next_location/loop with storage adventofcode:2015 day09.call
#execute unless data storage adventofcode:2015 day09.current[-1].checked run tellraw @a {"storage": "adventofcode:2015", "nbt": "day09.current[-1].distance"}
execute unless data storage adventofcode:2015 day09.current[-1].checked if predicate adventofcode:2015/day09/min run data modify storage adventofcode:2015 day09.output.part1 set from storage adventofcode:2015 day09.current[-1].distance
execute unless data storage adventofcode:2015 day09.current[-1].checked if predicate adventofcode:2015/day09/max run data modify storage adventofcode:2015 day09.output.part2 set from storage adventofcode:2015 day09.current[-1].distance