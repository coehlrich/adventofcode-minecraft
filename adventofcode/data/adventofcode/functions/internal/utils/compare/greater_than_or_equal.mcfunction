# Function results need to be stored before returning - https://bugs.mojang.com/browse/MC-264595
$execute store result storage adventofcode:global result int 1 run function adventofcode:internal/utils/compare/match {value: $(value), start: $(comparison), end: ""}
return run data get storage adventofcode:global result