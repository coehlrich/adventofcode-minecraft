data modify storage adventofcode:2015/day16 pair.key set string storage adventofcode:2015/day16 parse.line 0 3
function adventofcode:2015/day16/internal/parse/skip_to_space
execute if data storage adventofcode:2015/day16 pair{key: "chi"} store result storage adventofcode:2015/day16 parse.children int 1 run function adventofcode:2015/day16/internal/parse/read_number
execute if data storage adventofcode:2015/day16 pair{key: "cat"} store result storage adventofcode:2015/day16 parse.cats int 1 run function adventofcode:2015/day16/internal/parse/read_number
execute if data storage adventofcode:2015/day16 pair{key: "sam"} store result storage adventofcode:2015/day16 parse.samoyeds int 1 run function adventofcode:2015/day16/internal/parse/read_number
execute if data storage adventofcode:2015/day16 pair{key: "pom"} store result storage adventofcode:2015/day16 parse.pomeranians int 1 run function adventofcode:2015/day16/internal/parse/read_number
execute if data storage adventofcode:2015/day16 pair{key: "aki"} store result storage adventofcode:2015/day16 parse.akitas int 1 run function adventofcode:2015/day16/internal/parse/read_number
execute if data storage adventofcode:2015/day16 pair{key: "viz"} store result storage adventofcode:2015/day16 parse.vizslas int 1 run function adventofcode:2015/day16/internal/parse/read_number
execute if data storage adventofcode:2015/day16 pair{key: "gol"} store result storage adventofcode:2015/day16 parse.goldfish int 1 run function adventofcode:2015/day16/internal/parse/read_number
execute if data storage adventofcode:2015/day16 pair{key: "tre"} store result storage adventofcode:2015/day16 parse.trees int 1 run function adventofcode:2015/day16/internal/parse/read_number
execute if data storage adventofcode:2015/day16 pair{key: "car"} store result storage adventofcode:2015/day16 parse.cars int 1 run function adventofcode:2015/day16/internal/parse/read_number
execute if data storage adventofcode:2015/day16 pair{key: "per"} store result storage adventofcode:2015/day16 parse.perfumes int 1 run function adventofcode:2015/day16/internal/parse/read_number

execute unless data storage adventofcode:2015/day16 parse{line: ""} run function adventofcode:2015/day16/internal/parse/skip_to_space
execute unless data storage adventofcode:2015/day16 parse{line: ""} run function adventofcode:2015/day16/internal/read_entry