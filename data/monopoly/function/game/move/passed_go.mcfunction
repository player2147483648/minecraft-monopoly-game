tellraw @s {text:"You went around the board!",color:green}
tellraw @s [{text:"+",color:green},{text:"M",strikethrough:true},{text:"200",strikethrough:false}]
scoreboard players remove @s board_position 40