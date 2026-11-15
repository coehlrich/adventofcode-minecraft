
data modify storage adventofcode:2015/day13 solve.table append value {}
data modify storage adventofcode:2015/day13 solve.table[-1].people set from storage adventofcode:2015/day13 solve.table[-2].next_remaining_people
data modify storage adventofcode:2015/day13 solve.table[-1].remaining_people set from storage adventofcode:2015/day13 solve.table[-2].next_remaining_people
data modify storage adventofcode:2015/day13 solve.table[-1].previous_person set from storage adventofcode:2015/day13 solve.table[-2].person

function adventofcode:2015/day13/internal/solve/loop

data remove storage adventofcode:2015/day13 solve.table[-1]