gamerule maxCommandChainLength 1000000

#scoreboard objectives
scoreboard objectives add du_uuid dummy
scoreboard objectives add du_data dummy

scoreboard objectives add du_move_x dummy
scoreboard objectives add du_move_y dummy
scoreboard objectives add du_move_z dummy

scoreboard objectives add du_jump minecraft.custom:minecraft.jump
scoreboard objectives add du_leave_game minecraft.custom:minecraft.leave_game
scoreboard objectives add du_talked minecraft.custom:minecraft.talked_to_villager

scoreboard objectives add du_health dummy
scoreboard objectives add du_armor armor

#version: (-)XX.XX.XX.XX
scoreboard objectives add load dummy
scoreboard players set $du.ver load 2010003

#Team Data
team add du_nopush
team modify du_nopush collisionRule never

#ID stuff
execute unless score incr_id du_uuid matches ..2147483647 run scoreboard players set incr_id du_uuid 0
