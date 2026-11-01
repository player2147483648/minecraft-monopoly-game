tellraw @a[tag=!turn] [{color:red,selector:"@p[tag=turn]"}, {text:" is going to jail!"}]
title @s title {color:"red",text:"You are now in jail!"}
tag @s add jailed
scoreboard players set @s board_position 10
execute as @e[type=mannequin,tag=token] if score @s turn = @p[tag=turn] turn run tp @s @n[tag=jail_space,type=marker]
function monopoly:game/turn/start_turn