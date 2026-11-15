function adventofcode:2015/day12/internal/read/read_char
data modify storage adventofcode:2015/day12 stack append value {"type": "object", "part1": 0, "part2": 0}
function adventofcode:2015/day12/internal/read_object/loop
data modify storage adventofcode:2015/day12 stack[-2].part1 set compute default integer adventofcode:2015/day12/object_array/part1
execute unless data storage adventofcode:2015/day12 stack[-1].red run data modify storage adventofcode:2015/day12 stack[-2].part2 set compute default integer adventofcode:2015/day12/object_array/part2
data remove storage adventofcode:2015/day12 stack[-1]