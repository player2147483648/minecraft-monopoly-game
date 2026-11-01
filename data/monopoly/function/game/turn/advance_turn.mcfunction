scoreboard players add #turn turn 1
scoreboard players operation #turn turn %= #players turn
tag @p[tag=turn] remove turn
execute as @a[tag=playing] if score @s turn = #turn turn run tag @s add turn