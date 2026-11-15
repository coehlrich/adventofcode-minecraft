function adventofcode:2015/day12/internal/read/read_char
data modify storage adventofcode:2015/day12 stack append value {"type": "array", "part1": 0, "part2": 0}
function adventofcode:2015/day12/internal/read_array/loop
data modify storage adventofcode:2015/day12 stack[-2].part1 set compute default integer adventofcode:2015/day12/object_array/part1
data modify storage adventofcode:2015/day12 stack[-2].part2 set compute default integer adventofcode:2015/day12/object_array/part2
data remove storage adventofcode:2015/day12 stack[-1]