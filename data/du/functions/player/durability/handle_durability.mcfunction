
execute if data entity @s[tag=!du_hit_entity] SelectedItem.tag.du_dur{enabled:1b} unless data entity @s SelectedItem.tag.du_dur{item_dur:0} run function du:player/durability/process_mainhand
execute if data entity @s[tag=du_hit_entity] SelectedItem.tag.du_dur{enabled:1b} run function du:player/durability/damage_mainhand
execute if data entity @s Inventory[{Slot:-106b}].tag.du_dur{enabled:1b} run function du:player/durability/process_offhand

execute if data entity @s Inventory[{Slot:100b}].tag.du_dur{enabled:1b} run function du:player/durability/process_boots
execute if data entity @s Inventory[{Slot:101b}].tag.du_dur{enabled:1b} run function du:player/durability/process_leggings
execute if data entity @s Inventory[{Slot:102b}].tag.du_dur{enabled:1b} run function du:player/durability/process_chestplate
execute if data entity @s Inventory[{Slot:103b}].tag.du_dur{enabled:1b} run function du:player/durability/process_helmet
