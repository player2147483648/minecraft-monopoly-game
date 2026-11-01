## Scoreboards
# general game info
scoreboard objectives add game_info dummy
execute unless score #playing game_info matches 0.. run scoreboard players set #playing game_info 0
# used for markers to indicate a space on the board
scoreboard objectives add board_spaces dummy
# player's board position
scoreboard objectives add board_position dummy
# relating to turn order
scoreboard objectives add turn dummy
# dice rolls
scoreboard objectives add roll1 dummy
scoreboard objectives add roll2 dummy
# animation timer(s)
scoreboard objectives add move_timer dummy
# for jail/double mechanic
scoreboard objectives add doubles dummy
scoreboard objectives add jail_turns dummy
## NBT
# Index for spaces when you land.
execute unless data storage monopoly:spaces spaces run data modify storage monopoly:spaces spaces set value [{type:"none"},{type:"property",name:"Mediterranean Avenue",price:60,owner:-1,mortgaged:0},{type:"community_chest"},{type:"property",name:"Baltic Avenue",price:60,owner:-1,mortgaged:0},{type:"tax",name:"Income Tax",price:200},{type:"property",railroad:1b,name:"Reading Railroad",price:200,owner:-1,mortgaged:0},{type:"property",name:"Oriental Avenue",price:100,owner:-1,mortgaged:0},{type:"chance"},{type:"property",name:"Vermont Avenue",price:100,owner:-1,mortgaged:0},{type:"property",name:"Connecticut Avenue",price:120,owner:-1,mortgaged:0},{type:"none"},{type:"property",name:"St. Charles Place",price:140,owner:-1,mortgaged:0},{type:"property",utility:1b,name:"Electric Company",price:150,owner:-1,mortgaged:0},{type:"property",name:"States Avenue",price:140,owner:-1,mortgaged:0},{type:"property",name:"Virginia Avenue",price:160,owner:-1,mortgaged:0},{type:"property",railroad:1b,name:"Pennsylvania Railroad",price:200,owner:-1,mortgaged:0},{type:"property",name:"St. James Place",price:180,owner:-1,mortgaged:0},{type:"community_chest"},{type:"property",name:"Tennessee Avenue",price:180,owner:-1,mortgaged:0},{type:"property",name:"New York Avenue",price:200,owner:-1,mortgaged:0},{type:"free_parking"},{type:"property",name:"Kentucky Avenue",price:220,owner:-1,mortgaged:0},{type:"chance"},{type:"property",name:"Indiana Avenue",price:220,owner:-1,mortgaged:0},{type:"property",name:"Illinois Avenue",price:240,owner:-1,mortgaged:0},{type:"property",railroad:1b,name:"B. & O. Railroad",price:200,owner:-1,mortgaged:0},{type:"property",name:"Atlantic Avenue",price:260,owner:-1,mortgaged:0},{type:"property",name:"Ventnor Avenue",price:260,owner:-1,mortgaged:0},{type:"property",utility:1b,name:"Water Works",price:150,owner:-1,mortgaged:0},{type:"property",name:"Marvin Gardens",price:280,owner:-1,mortgaged:0},{type:"go_to_jail"},{type:"property",name:"Pacific Avenue",price:300,owner:-1,mortgaged:0},{type:"property",name:"North Carolina Avenue",price:300,owner:-1,mortgaged:0},{type:"community_chest"},{type:"property",name:"Pennsylvania Avenue",price:320,owner:-1,mortgaged:0},{type:"property",railroad:1b,name:"Short Line",price:200,owner:-1,mortgaged:0},{type:"chance"},{type:"property",name:"Park Place",price:350,owner:-1,mortgaged:0},{type:"tax",name:"Luxury Tax",price:100},{type:"property",name:"Boardwalk",price:400,owner:-1,mortgaged:0}]