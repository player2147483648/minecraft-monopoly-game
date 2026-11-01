scoreboard players add #turn turn 1
scoreboard players operation #turn turn %= #players turn
tag @p[tag=turn] remove turn
execute as @a[tag=playing] if score @s turn = #turn turn run tag @s add turn
loot give @p[tag=turn] loot monopoly:items/dice
tellraw @p[tag=turn] {color:gold,text:"It's your turn."}
tellraw @a[tag=playing,tag=!turn] [{color:gold,text:"It's "}, {selector:"@p[tag=turn]"}, {text:"'s turn."}]