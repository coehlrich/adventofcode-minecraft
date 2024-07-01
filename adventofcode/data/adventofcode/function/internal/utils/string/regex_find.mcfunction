data remove storage adventofcode:string/regex output

data modify storage adventofcode:string/regex current.find.stack set value []
data modify storage adventofcode:string/regex current.find.stack append value {position: 0, groups: [{}], tokens_stack: []}
data modify storage adventofcode:string/regex current.find.stack[-1].tokens_stack append from storage adventofcode:string/regex current.parsed
execute store result storage adventofcode:string/regex current.find.end int 1 run data get storage adventofcode:string/regex current.input
execute store result storage adventofcode:string/regex output.success int 1 run function adventofcode:internal/utils/string/regex/find

execute if data storage adventofcode:string/regex output{success: 1} run data modify storage adventofcode:string/regex current.find.stack[-1].groups[0].end set from storage adventofcode:string/regex current.find.stack[-1].position
execute if data storage adventofcode:string/regex output{success: 1} run data modify storage adventofcode:string/regex call set value {input: "storage adventofcode:string/regex current.input", output: "storage adventofcode:string/regex current.find.stack[-1].groups[0].text"}
execute if data storage adventofcode:string/regex output{success: 1} run data modify storage adventofcode:string/regex call.start set from storage adventofcode:string/regex current.find.stack[-1].groups[0].start
execute if data storage adventofcode:string/regex output{success: 1} run data modify storage adventofcode:string/regex call.end set from storage adventofcode:string/regex current.find.stack[-1].groups[0].end
execute if data storage adventofcode:string/regex output{success: 1} run function adventofcode:internal/utils/substring with storage adventofcode:string/regex call

execute if data storage adventofcode:string/regex output{success: 1} run data modify storage adventofcode:string/regex output.groups set from storage adventofcode:string/regex current.find.stack[-1].groups
data remove storage adventofcode:string/regex current.find
#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "output"}
return run data get storage adventofcode:string/regex output.success