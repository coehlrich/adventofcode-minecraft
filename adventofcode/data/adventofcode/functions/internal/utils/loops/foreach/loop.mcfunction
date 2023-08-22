$function $(callback) with storage adventofcode:loops/foreach callback
function adventofcode:internal/utils/operation/increment {input: "storage adventofcode:loops/foreach callback.index"}
data modify storage adventofcode:loops/foreach call.value set from storage adventofcode:loops/foreach callback.index
data modify storage adventofcode:loops/foreach call.comparison set from storage adventofcode:loops/foreach end