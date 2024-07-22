function adventofcode:2015/day11/internal/append_character
#function adventofcode:2015/day11/internal/increment_string
execute positioned ~ ~1.5 ~ summon minecraft:text_display run tag @s add 2015-day11
execute as @e[tag=2015-day11] run data merge entity @s {text: '{"storage": "adventofcode:2015", "nbt": "day11.characters[].value.character", "separator": ""}', billboard: "center"}