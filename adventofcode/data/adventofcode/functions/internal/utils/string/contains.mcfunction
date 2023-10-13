$data modify storage adventofcode:string/contains current.input set from $(input)
$data modify storage adventofcode:string/contains current.contains set value "$(contains)"
data modify storage adventofcode:string/contains current.position set value 0
data modify storage adventofcode:string/contains count set value 0
execute store result storage adventofcode:string/contains call.first int 1 run data get storage adventofcode:string/contains current.input
execute store result storage adventofcode:string/contains call.second int 1 run data get storage adventofcode:string/contains current.contains
execute store result storage adventofcode:string/contains current.end int 1 run function adventofcode:internal/utils/operation/subtraction with storage adventofcode:string/contains call
function adventofcode:internal/utils/operation/increment {input: "storage adventofcode:string/contains current.end"}
execute store result storage adventofcode:string/contains current.length int 1 run data get storage adventofcode:string/contains current.contains
$function adventofcode:internal/utils/string/contains/loop {contains: "$(contains)"}
data remove storage adventofcode:string/contains current
return run data get storage adventofcode:string/contains count