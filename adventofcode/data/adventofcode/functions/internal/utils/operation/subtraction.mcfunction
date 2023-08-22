# Function results need to be stored before returning - https://bugs.mojang.com/browse/MC-264595
$execute store result storage adventofcode:global result int 1 run function adventofcode:internal/utils/operation/operation {first:$(first), second:$(second), type:"-="}
return run data get storage adventofcode:global result