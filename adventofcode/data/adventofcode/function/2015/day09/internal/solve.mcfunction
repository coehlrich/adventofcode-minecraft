data modify storage adventofcode:2015 day09.current set value []
data modify storage adventofcode:2015 day09.current append value {}
data modify storage adventofcode:2015 day09.current[-1].locations set from storage adventofcode:2015 day09.locations
data modify storage adventofcode:2015 day09.current[-1].lookup_locations set from storage adventofcode:2015 day09.lookup_locations
data modify storage adventofcode:2015 day09.current[-1].distances set from storage adventofcode:2015 day09.distances
function adventofcode:2015/day09/internal/start_loop