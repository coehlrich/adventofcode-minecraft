#$execute store result storage adventofcode:test test int 1 run function adventofcode:internal/utils/compare/match {value: $(value), start: $(comparison), end: $(comparison)}
# Function results need to be stored before returning - https://bugs.mojang.com/browse/MC-264595
$return run function adventofcode:internal/utils/compare/match {value: $(value), start: $(comparison), end: $(comparison)}