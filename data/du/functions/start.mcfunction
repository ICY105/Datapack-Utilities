gamerule commandBlockOutput false
gamerule maxCommandChainLength 1000000

#scoreboard objectives
scoreboard objectives add du_uuid dummy
scoreboard objectives add du_data dummy

scoreboard objectives add du_move_x dummy
scoreboard objectives add du_move_y dummy
scoreboard objectives add du_move_z dummy

scoreboard objectives add du_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add du_jump minecraft.custom:minecraft.jump
scoreboard objectives add du_leave_game minecraft.custom:minecraft.leave_game
scoreboard objectives add du_talked minecraft.custom:minecraft.talked_to_villager

scoreboard objectives add du_health dummy
scoreboard objectives add du_armor armor

#Team Data
team add du_nopush
team modify du_nopush collisionRule never

#marks spawn chunks
kill @e[type=area_effect_cloud,tag=du_spawn_chunks]
summon area_effect_cloud ~ 0 ~ {Tags:["du_spawn_chunks"],Duration:2000000000}

#Seed for RNG
execute store result score in_0 du_data run data get entity @e[tag=du_spawn_chunks,limit=1] UUIDLeast 0.0000000001
function du:math/abs
scoreboard players operation rng_seed du_data = out_0 du_data

#ID stuff
execute unless score incr_id du_uuid matches ..2147483647 run scoreboard players set incr_id du_uuid 0

#Init Modules
scoreboard players set is_loaded du_data 0
scoreboard players set worldgen du_data 0
function du:load_chunks
function du:base/check_static_region
function du:world/init
function du:player/init

#Call post-init
function #du:post_init
execute if score is_loaded du_data matches 0 run scoreboard players set worldgen du_data 0

#version: (-)XX.XX.XX.XX
scoreboard players set du_ver du_data -2000008
tellraw @a [{"text":"[Loaded Datapack Utils v2.0 Prerelease 8]","color":"dark_green"}]
