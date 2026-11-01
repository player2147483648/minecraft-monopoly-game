# For the move animation and continuation of the turn.
scoreboard players remove @a[scores={move_timer=1..}] move_timer 1
execute as @a[scores={move_timer=0},tag=turn] run function monopoly:game/move/move_player