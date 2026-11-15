data modify storage adventofcode:2015/day13 parse.line set from storage adventofcode:2015/day13 input[0]
data modify storage adventofcode:2015/day13 parse.person set string storage adventofcode:2015/day13 parse.line 0 3

function adventofcode:2015/day13/internal/parse/skip_to_space
function adventofcode:2015/day13/internal/parse/skip_to_space

data modify storage adventofcode:2015/day13 parse.gain set string storage adventofcode:2015/day13 parse.line 0 4
execute if data storage adventofcode:2015/day13 parse{gain: "gain"} run data modify storage adventofcode:2015/day13 parse.gain set value 1
execute if data storage adventofcode:2015/day13 parse{gain: "lose"} run data modify storage adventofcode:2015/day13 parse.gain set value -1

function adventofcode:2015/day13/internal/parse/skip_to_space

data modify storage adventofcode:math/from_number in set from storage adventofcode:2015/day13 parse.line
function adventofcode:internal/utils/math/from_number
data modify storage adventofcode:2015/day13 parse.happiness set compute default integer adventofcode:2015/day13/parse/happiness
data modify storage adventofcode:2015/day13 parse.line set from storage adventofcode:math/from_number out.remaining

function adventofcode:2015/day13/internal/parse/skip_to_space
function adventofcode:2015/day13/internal/parse/skip_to_space
function adventofcode:2015/day13/internal/parse/skip_to_space
function adventofcode:2015/day13/internal/parse/skip_to_space
function adventofcode:2015/day13/internal/parse/skip_to_space
function adventofcode:2015/day13/internal/parse/skip_to_space
function adventofcode:2015/day13/internal/parse/skip_to_space

data modify storage adventofcode:2015/day13 parse.other set string storage adventofcode:2015/day13 parse.line 0 3

function adventofcode:2015/day13/internal/parse/store_happiness with storage adventofcode:2015/day13 parse

data remove storage adventofcode:2015/day13 input[0]
execute if data storage adventofcode:2015/day13 input[0] run function adventofcode:2015/day13/internal/parse