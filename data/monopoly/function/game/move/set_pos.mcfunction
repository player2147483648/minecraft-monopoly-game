# Preparing to move if not in (given no doubles)/going to jail
execute store result score @s board_position run compute entity @s integer monopoly:move
scoreboard players reset @s roll1
scoreboard players reset @s roll2
scoreboard players set @s move_timer 15