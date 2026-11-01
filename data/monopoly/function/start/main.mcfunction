# Checks if game can start
execute store result score #players game_info if entity @a[dx=1,dy=3,dz=1]
execute if score #playing game_info matches 1 run return run tellraw @a[dx=1,dy=3,dz=1] {color:red,text:"There is an ongoing game!"}
execute if score #players game_info matches ..1 run return run tellraw @a[dx=1,dy=3,dz=1] {color:red,text:"There are not enough players to start!"}
# If all conditions are met (no ongoing game, and at least 2 players in the lobby area), start the game
tellraw @a[dx=1,dy=3,dz=1] {color:green,text:"Starting..."}
scoreboard players set #playing game_info 1
function monopoly:debug/turn_order
execute as @a[dx=1,dy=3,dz=1,sort=random] at @s run function monopoly:start/setup_players
execute store result score #players turn if entity @a[tag=playing]
scoreboard players reset #temp turn
function monopoly:game/turn/start_turn