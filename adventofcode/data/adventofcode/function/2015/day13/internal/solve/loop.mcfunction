data modify storage adventofcode:2015/day13 solve.table[-1].person set from storage adventofcode:2015/day13 solve.table[-1].people[0].person
data remove storage adventofcode:2015/day13 solve.table[-1].people[0]

data modify storage adventofcode:2015/day13 solve.table[-1].next_remaining_people set from storage adventofcode:2015/day13 solve.table[-1].remaining_people
function adventofcode:2015/day13/internal/solve/remove_current_person with storage adventofcode:2015/day13 solve.table[-1]

execute if data storage adventofcode:2015/day13 solve.table[-1].previous_person run function adventofcode:2015/day13/internal/solve/update_happiness with storage adventofcode:2015/day13 solve.table[-1]

execute if data storage adventofcode:2015/day13 solve.table[-1].next_remaining_people[0] run function adventofcode:2015/day13/internal/solve/recurse
execute unless data storage adventofcode:2015/day13 solve.table[-1].next_remaining_people[0] run data modify storage adventofcode:2015/day13 result.part2 set compute default integer adventofcode:2015/day13/solve/part2
execute unless data storage adventofcode:2015/day13 solve.table[-1].next_remaining_people[0] run data modify storage adventofcode:2015/day13 solve.table[-1].start_person set from storage adventofcode:2015/day13 solve.table[0].person
execute unless data storage adventofcode:2015/day13 solve.table[-1].next_remaining_people[0] run function adventofcode:2015/day13/internal/solve/update_final_happiness with storage adventofcode:2015/day13 solve.table[-1]
execute unless data storage adventofcode:2015/day13 solve.table[-1].next_remaining_people[0] run data modify storage adventofcode:2015/day13 result.part1 set compute default integer adventofcode:2015/day13/solve/part1

execute if data storage adventofcode:2015/day13 solve.table[-2] if data storage adventofcode:2015/day13 solve.table[-1].people[0] run function adventofcode:2015/day13/internal/solve/loop
execute unless data storage adventofcode:2015/day13 solve.table[-2] store result bossbar adventofcode:progress value run data get storage adventofcode:2015/day13 solve.table[-1].people
execute unless data storage adventofcode:2015/day13 solve.table[-2] if data storage adventofcode:2015/day13 solve.table[-1].people[0] run schedule function adventofcode:2015/day13/internal/solve/loop 1t
execute unless data storage adventofcode:2015/day13 solve.table[-2] unless data storage adventofcode:2015/day13 solve.table[-1].people[0] run function adventofcode:2015/day13/internal/finish