
#actions
tag @s remove du_jumping
tag @s[scores={du_jump=1..}] add du_jumping
scoreboard players set @s du_jump 0

#moving
execute if score $base.timer_2 du_data matches 0 run function du:player/get_moving

#click detect
function du:player/clickdetect/clickdetect

#custom durability
execute if data entity @s Inventory[].tag.du_dur.enabled run function du:player/durability/handle_durability

#damage
execute if score @s du_health matches 12.. unless predicate du:entity/is_invul_tick run function du:player/damage

#Assign Player IDs
execute if score timer_20 $base.du_data matches 0 run function du:player/uuid/get_uuid

#ui clear
clear @s gray_stained_glass_pane{du_gui:1b}

#reset scores
scoreboard players set @s du_talked 0
tag @s remove du_hit_entity
