#$forceload add ~$(fromx) ~$(fromz)
#$forceload add ~$(tox) ~$(toz)
$fill ~$(fromx) ~99 ~$(fromz) ~$(tox) ~99 ~$(toz) minecraft:command_block{auto:1b,Command:"function adventofcode:2015/day06/internal/part2/$(instruction)"}
#$forceload remove ~$(fromx) ~$(fromz)
#$forceload remove ~$(tox) ~$(toz)
#forceload add ~ ~