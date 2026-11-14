data modify storage adventofcode:2015/day09 solve.route[-1].location set from storage adventofcode:2015/day09 solve.route[-1].locations[0].location
data remove storage adventofcode:2015/day09 solve.route[-1].locations[0]

data modify storage adventofcode:2015/day09 solve.route[-1].next_remaining_locations set from storage adventofcode:2015/day09 solve.route[-1].remaining_locations
function adventofcode:2015/day09/internal/solve/remove_current_location with storage adventofcode:2015/day09 solve.route[-1]

execute if data storage adventofcode:2015/day09 solve.route[-1].previous_location run function adventofcode:2015/day09/internal/solve/update_distance with storage adventofcode:2015/day09 solve.route[-1]

execute if data storage adventofcode:2015/day09 solve.route[-1].next_remaining_locations[0] run function adventofcode:2015/day09/internal/solve/recurse
execute unless data storage adventofcode:2015/day09 solve.route[-1].next_remaining_locations[0] run data modify storage adventofcode:2015/day09 result.part1 set compute default integer adventofcode:2015/day09/part1
execute unless data storage adventofcode:2015/day09 solve.route[-1].next_remaining_locations[0] run data modify storage adventofcode:2015/day09 result.part2 set compute default integer adventofcode:2015/day09/part2

execute if data storage adventofcode:2015/day09 solve.route[-2] if data storage adventofcode:2015/day09 solve.route[-1].locations[0] run function adventofcode:2015/day09/internal/solve/loop
execute unless data storage adventofcode:2015/day09 solve.route[-2] store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day09 solve.route[-1].locations
execute unless data storage adventofcode:2015/day09 solve.route[-2] if data storage adventofcode:2015/day09 solve.route[-1].locations[0] run schedule function adventofcode:2015/day09/internal/solve/loop 1t
execute unless data storage adventofcode:2015/day09 solve.route[-2] unless data storage adventofcode:2015/day09 solve.route[-1].locations[0] run function adventofcode:2015/day09/internal/finish