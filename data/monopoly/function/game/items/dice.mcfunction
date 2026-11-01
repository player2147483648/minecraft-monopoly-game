execute unless entity @s[tag=turn] run return run advancement revoke @s only monopoly:roll_dice
advancement revoke @s only monopoly:roll_dice
item replace entity @s weapon.mainhand with air
execute store result score @s roll1 run random value 1..6
execute store result score @s roll2 run random value 1..6
playsound entity.experience_orb.pickup master @a ~ ~ ~ 20

# If doubles were not rolled, reset the doubles counter, and proceed as normal
execute unless score @s roll1 = @s roll2 run tellraw @a [{selector:"@s"}, " rolled a ", {score:{objective:roll1,name:"@s"}}, " and a ", {score:{objective:roll2,name:"@s"}},"!"]
execute unless score @s roll1 = @s roll2 run scoreboard players reset @s doubles
# If doubles **were** rolled, increase the counter and announce the doubles.
execute if score @s roll1 = @s roll2 run tellraw @a [{selector:"@s"}, " rolled double ", {score:{name:"@s",objective:roll1}},"s!"]
execute if score @s roll1 = @s roll2 run scoreboard players add @s doubles 1
# more functions to be added later; run a certain action if the player is in jail, landed on an owned utility, or is just moving
execute if entity @s[tag=jailed] run return run function monopoly:game/move/special/jail/handle_jail
execute if score @s[tag=turn] doubles matches 1.. run return run function monopoly:game/move/special/handle_doubles
execute if entity @s[tag=turn] run return run function monopoly:game/move/set_pos