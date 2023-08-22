$scoreboard players set operation.first adventofcode $(first)
$scoreboard players set operation.second adventofcode $(second)
$scoreboard players operation operation.first adventofcode $(type) operation.second adventofcode
return run scoreboard players get operation.first adventofcode