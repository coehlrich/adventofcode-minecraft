data modify storage adventofcode:2015/day06 result.part1 set compute default integer adventofcode:2015/day06/part1/toggle
execute if block ~ ~ ~ black_concrete run setblock ~ ~ ~ gray_concrete
execute if block ~ ~ ~ white_concrete run setblock ~ ~ ~ black_concrete
execute if block ~ ~ ~ gray_concrete run setblock ~ ~ ~ white_concrete