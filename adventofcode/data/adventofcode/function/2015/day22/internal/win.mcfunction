data modify storage adventofcode:2015/day22 min_mana set from storage adventofcode:2015/day22 stack[-1].used_mana
data remove storage adventofcode:2015/day22 stack[-1]

schedule function adventofcode:2015/day22/internal/choose_spell 1t replace