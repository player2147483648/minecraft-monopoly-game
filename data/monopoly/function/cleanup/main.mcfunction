# Do stuff pertaining to players
execute as @a[tag=playing] run function monopoly:cleanup/players
# Cleanup scoreboards
scoreboard players reset * board_position
scoreboard players reset * turn
scoreboard players reset * doubles
scoreboard players reset * jail_turns
scoreboard players reset * move_timer
# Remove the mannequins
tp @e[type=mannequin] ~ -500 ~
# Tell the game (and every player) that it ended
scoreboard players set #playing game_info 0
tellraw @a "Game ended."