execute unless entity @p[tag=turn,scores={doubles=1..},tag=!jailed] run function monopoly:game/turn/advance_turn
loot give @p[tag=turn] loot monopoly:items/dice
tellraw @p[tag=turn] {color:gold,text:"It's your turn."}
tellraw @a[tag=playing,tag=!turn] [{color:gold,text:"It's "}, {selector:"@p[tag=turn]"}, {text:"'s turn."}]