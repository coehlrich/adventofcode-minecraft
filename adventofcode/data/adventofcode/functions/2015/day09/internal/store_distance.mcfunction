$data modify storage adventofcode:2015 day09.distances.$(start).$(end) set value $(distance)
$data modify storage adventofcode:2015 day09.distances.$(end).$(start) set value $(distance)
$execute unless data storage adventofcode:2015 day09.locations[{location: "$(start)"}] run data modify storage adventofcode:2015 day09.locations append value {location: "$(start)"}
$execute unless data storage adventofcode:2015 day09.locations[{location: "$(end)"}] run data modify storage adventofcode:2015 day09.locations append value {location: "$(end)"}