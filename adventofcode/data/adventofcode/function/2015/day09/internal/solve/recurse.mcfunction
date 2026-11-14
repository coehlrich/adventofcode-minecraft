
data modify storage adventofcode:2015/day09 solve.route append value {}
data modify storage adventofcode:2015/day09 solve.route[-1].locations set from storage adventofcode:2015/day09 solve.route[-2].next_remaining_locations
data modify storage adventofcode:2015/day09 solve.route[-1].remaining_locations set from storage adventofcode:2015/day09 solve.route[-2].next_remaining_locations
data modify storage adventofcode:2015/day09 solve.route[-1].previous_location set from storage adventofcode:2015/day09 solve.route[-2].location

function adventofcode:2015/day09/internal/solve/loop

data remove storage adventofcode:2015/day09 solve.route[-1]