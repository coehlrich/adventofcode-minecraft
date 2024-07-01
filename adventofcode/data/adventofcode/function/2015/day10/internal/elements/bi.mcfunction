data modify storage adventofcode:2015 day10.element_count set value 0
data modify storage adventofcode:2015 day10.element_count set from storage adventofcode:2015 day10.elements[-2].Bi

function adventofcode:2015/day10/internal/add_element {element: "Pm"}
function adventofcode:2015/day10/internal/add_element {element: "Pb"}
#tellraw @a {"storage": "adventofcode:2015", "nbt": "day10.element_count"}
