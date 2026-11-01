# If rolled doubles in jail, remove 'jailed' tag, reset jail turns, and reset doubles
scoreboard players reset @s doubles
scoreboard players reset @s jail_turns
tag @s remove jailed
function monopoly:game/move/set_pos