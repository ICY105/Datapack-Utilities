#we do za function ;)
setblock 29000000 253 29999999 command_block{Command:"scoreboard players set @a du_commandblocktest 1"} replace
setblock 29000000 252 29999999 redstone_block replace

schedule function du:world/utils/check_cmd_resolve 1t