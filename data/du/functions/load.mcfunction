gamerule maxCommandChainLength 1000000

#scoreboard objectives
scoreboard objectives add du_uuid dummy
scoreboard objectives add du_data dummy

scoreboard objectives add du_move_x dummy
scoreboard objectives add du_move_y dummy
scoreboard objectives add du_move_z dummy

scoreboard objectives add du_jump minecraft.custom:minecraft.jump
scoreboard objectives add du_talked minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add pregen_radius trigger

scoreboard objectives add du_health dummy
scoreboard objectives add du_armor armor

#version: ( - for prerelease) XX.XX.XX.XX
scoreboard players set $du.ver load 2010500

#Team Data
team add du_nopush
team modify du_nopush collisionRule never

#ID stuff
execute unless score incr_id du_uuid matches ..2147483647 run scoreboard players set incr_id du_uuid 0

#marks spawn chunks
kill @e[type=area_effect_cloud,tag=du_spawn_chunks]
summon area_effect_cloud ~ 0 ~ {Tags:["du_spawn_chunks"],Duration:2000000000}

#Init Modules
forceload add -29999999 1600
execute in minecraft:the_end run forceload add -29999999 1600
execute in minecraft:the_nether run forceload add -29999999 1600

#init modules
function du:base/init
function du:math/init
function du:world/init

#schedule load message
schedule function du:load_message 2s
