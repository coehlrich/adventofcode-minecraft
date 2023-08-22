$scoreboard players set match.value adventofcode $(value)
$execute if score match.value adventofcode matches $(start)..$(end) run return 1
return 0