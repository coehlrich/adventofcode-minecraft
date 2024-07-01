$data modify storage adventofcode:string/regex current.input set from $(input)
$data modify storage adventofcode:string/regex current.regex set from $(regex)
return run function adventofcode:internal/utils/string/regex_set