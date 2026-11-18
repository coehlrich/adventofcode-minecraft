data modify storage adventofcode:2015/day19 part2.replacement.value set from storage adventofcode:2015/day19 part2.replacements[0].value
data modify storage adventofcode:2015/day19 part2.check set value []
data modify storage adventofcode:2015/day19 part2.replaced append from storage adventofcode:2015/day19 part2.replacement.key[]
data modify storage adventofcode:2015/day19 result.part2 set compute default integer adventofcode:2015/day19/part2/increment_result