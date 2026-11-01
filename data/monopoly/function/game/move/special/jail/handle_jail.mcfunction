scoreboard players add @s jail_turns 1
execute if score @s doubles matches 1.. run return run function monopoly:game/move/special/jail/doubles_in_jail
execute if score @s jail_turns matches 3.. run return run function monopoly:game/move/special/jail/third_turn
function monopoly:game/turn/start_turn