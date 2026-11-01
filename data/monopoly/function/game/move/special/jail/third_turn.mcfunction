scoreboard players reset @s jail_turns
tag @s remove jailed
tellraw @s {color:"yellow", text:"You are out of jail, since it's your third turn."}
tellraw @s [{color:red,text:"-"},{text:"M",strikethrough:true},{text:"50",strikethrough:false}]
function monopoly:game/move/set_pos