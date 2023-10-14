data modify storage adventofcode:string/regex current.find.stack[-1].tokens_stack append from storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-1][0].tokens
data modify storage adventofcode:string/regex current.find.stack[-1].groups append value {}
data modify storage adventofcode:string/regex current.find.stack[-1].tokens_stack[-2][0].start set from storage adventofcode:string/regex current.find.stack[-1].position
return run function adventofcode:internal/utils/string/regex/find/match_token