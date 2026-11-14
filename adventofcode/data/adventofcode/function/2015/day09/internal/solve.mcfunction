execute store result bossbar adventofcode:progress max run data get storage adventofcode:2015/day09 locations
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day09 locations
data modify storage adventofcode:2015/day09 solve.route set value []
data modify storage adventofcode:2015/day09 solve.route append value {}
data modify storage adventofcode:2015/day09 solve.route[-1].locations set from storage adventofcode:2015/day09 locations
data modify storage adventofcode:2015/day09 solve.route[-1].remaining_locations set from storage adventofcode:2015/day09 locations
data modify storage adventofcode:2015/day09 solve.route[-1].distance set value 0
function adventofcode:2015/day09/internal/solve/loop