data modify storage adventofcode:loops/foreach callback.index set value 0
$execute store result storage adventofcode:loops/foreach end int 1 run data get $(input)
$function adventofcode:internal/utils/loops/foreach/loop {callback: "$(callback)"}
