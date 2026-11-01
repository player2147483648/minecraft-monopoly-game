tag @s add playing
tp 15.0 -56 -5.0
summon mannequin ~ ~ ~ {Tags:["mannequin_init","token"]}
tp @n[type=mannequin,tag=mannequin_init] @n[type=marker,tag=board_space,scores={board_spaces=0}]
data modify entity @n[type=mannequin,tag=mannequin_init] profile.id set from entity @s UUID
# temporary turn setup
scoreboard players operation @s turn = #temp turn
scoreboard players operation @n[type=mannequin,tag=mannequin_init] turn = @s turn
tag @n[type=mannequin,tag=mannequin_init] remove mannequin_init
scoreboard players add #temp turn 1