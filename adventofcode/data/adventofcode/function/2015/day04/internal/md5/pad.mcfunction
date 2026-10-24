data modify storage adventofcode:2015/day04 md5.processed_input append value 0
execute store result storage adventofcode:2015/day04 md5.pad_length int 1 run data get storage adventofcode:2015/day04 md5.processed_input
execute unless predicate adventofcode:2015/day04/md5/is_padded run function adventofcode:2015/day04/internal/md5/pad