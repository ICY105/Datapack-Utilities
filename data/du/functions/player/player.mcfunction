
#actions
tag @s remove du_sneaking
tag @s[scores={du_sneak=1..}] add du_sneaking
scoreboard players set @s du_sneak 0

tag @s remove du_jumping
tag @s[scores={du_jump=1..}] add du_jumping
scoreboard players set @s du_jump 0

#moving
execute if score timer_2 du_data matches 0 run function du:player/get_moving

#click detect
function du:player/clickdetect/clickdetect

#custom blocks (click detect method)
execute if entity @s[tag=du_right_click] store result score in_0 du_data run data get entity @s SelectedItem.tag.du_block_id
execute if entity @s[tag=du_right_click] unless score in_0 du_data matches 0 run function du:player/blocks/handle_custom_block

#custom durability
execute if data entity @s Inventory[].tag.du_dur.enabled run function du:player/durability/handle_durability

#damage
execute if score @s du_health matches 12.. if entity @s[nbt={HurtTime:0s}] run function du:player/damage

#Assign Player IDs
execute if score timer_20 du_data matches 0 run function du:player/uuid/get_uuid

#ui clear
clear @s gray_stained_glass_pane{du_gui:1b}

#reset scores
advancement revoke @s only du:triggers/dealt_damage
advancement revoke @s only du:triggers/taken_damage
advancement revoke @s only du:triggers/place_furnace
advancement revoke @s only du:triggers/place_custom_block
advancement revoke @s only du:triggers/place_custom_head
scoreboard players set @s du_talked 0
tag @s remove du_hit_entity