execute store result bossbar adventofcode:progress max run data get storage adventofcode:2015/day13 people
execute store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day13 people
data modify storage adventofcode:2015/day13 solve.table set value []
data modify storage adventofcode:2015/day13 solve.table append value {}
data modify storage adventofcode:2015/day13 solve.table[-1].people set from storage adventofcode:2015/day13 people
data modify storage adventofcode:2015/day13 solve.table[-1].remaining_people set from storage adventofcode:2015/day13 people
data modify storage adventofcode:2015/day13 solve.table[-1].happiness set value 0
function adventofcode:2015/day13/internal/solve/loop