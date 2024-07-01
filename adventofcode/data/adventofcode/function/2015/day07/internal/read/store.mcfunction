$data modify storage adventofcode:2015 day07.wires.$(wire_name) set from storage adventofcode:2015 day07.wire
#tellraw @a {"storage": "adventofcode:string/regex", "nbt": "output.groups"}
#$say Storing $(wire_name)