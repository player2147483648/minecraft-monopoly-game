scoreboard players reset @s move_timer
# passing go message (delayed, but needs to run before the anim)
execute if score @s board_position matches 40.. run function monopoly:game/move/passed_go
# Animation
execute as @e[type=mannequin,tag=token] if score @s turn = @p[tag=turn] turn run tag @s add moving
execute as @e[type=marker,tag=board_space] if score @s board_spaces = @p[tag=turn] board_position run tp @n[type=mannequin,tag=moving] @s
tag @n[type=mannequin,tag=moving] remove moving
## Perform an action depending on the space
# Setting up a macro first
execute store result storage monopoly:spaces current_space.space_id int 1 run scoreboard players get @s board_position
execute store result storage monopoly:spaces current_space.player int 1 run scoreboard players get @s turn
# Run the macro
function monopoly:game/action/perform/get_current_space with storage monopoly:spaces current_space
# Advance to the next player's turn
#execute if entity @p[tag=turn,scores={doubles=1..},tag=!jailed] run return run function monopoly:game/turn/start_turn
#function monopoly:game/turn/advance_turn