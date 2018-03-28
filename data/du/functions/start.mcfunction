gamerule commandBlockOutput false
gamerule maxCommandChainLength 1000000

#scoreboard objectives
scoreboard objectives add du_uuid dummy
scoreboard objectives add du_data dummy
scoreboard objectives add du_timer dummy

scoreboard objectives add du_move_x dummy
scoreboard objectives add du_move_y dummy
scoreboard objectives add du_move_z dummy
scoreboard objectives add du_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add du_jump minecraft.custom:minecraft.jump

scoreboard objectives add du_talked minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add du_damage minecraft.custom:minecraft.damage_dealt

scoreboard objectives add du_placehead minecraft.used:minecraft.player_head

team add du_nopush
team option du_nopush collisionRule never

#marks spawn chunks
kill @e[type=area_effect_cloud,tag=du_spawn_chunks]
summon area_effect_cloud ~ 0 ~ {Tags:["du_spawn_chunks"],Duration:2000000000}

#ID stuff
scoreboard players add incr_id du_uuid 1
