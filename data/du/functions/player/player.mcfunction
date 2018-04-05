
#actions
tag @s remove du_sneaking
tag @s[scores={du_sneak=1..}] add du_sneaking
scoreboard players set @s du_sneak 0

tag @s remove du_jumping
tag @s[scores={du_jump=1..}] add du_jumping
scoreboard players set @s du_jump 0

#moving
execute if score timer_2 du_data matches 0 run function du:player/get_moving

#Assign Player IDs
scoreboard players operation @s[tag=!du_has_id] mech_uuid = incrID mech_uuid
execute if entity @s[tag=!du_has_id] run scoreboard players add incrID mech_uuid 1
tag @s[tag=!du_has_id] add du_has_id