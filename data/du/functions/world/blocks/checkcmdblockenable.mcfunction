#when function setoff it takes 1-2 tick for correct value to return -4j0x
scoreboard players set @a du_commandblockenabled 0
setblock 29000000 253 29999900 command_block{Command:"scoreboard players set @a du_commandblockenabled 1"} replace
setblock 29000000 252 29999900 redstone_block replace

schedule function du:world/blocks/checkcmdblockenable-resolve 2t