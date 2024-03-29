$execute if data storage adventofcode:2015 day07.calculate.wires.$(wire_name).result run data modify storage adventofcode:2015 day07.calculate.result set from storage adventofcode:2015 day07.calculate.wires.$(wire_name).result
$execute if data storage adventofcode:2015 day07.calculate.wires.$(wire_name).result run return 1
#$say Starting $(wire_name)
$data modify storage adventofcode:2015 day07.calculate.using_wires append from storage adventofcode:2015 day07.calculate.wires.$(wire_name)
function adventofcode:2015/day07/internal/calculate/calculate with storage adventofcode:2015 day07.calculate.using_wires[-1]
data modify storage adventofcode:2015 day07.calculate.result set from storage adventofcode:2015 day07.calculate.using_wires[-1].result
$data modify storage adventofcode:2015 day07.calculate.wires.$(wire_name).result set from storage adventofcode:2015 day07.calculate.using_wires[-1].result
data remove storage adventofcode:2015 day07.calculate.using_wires[-1]
#$say Exiting $(wire_name)