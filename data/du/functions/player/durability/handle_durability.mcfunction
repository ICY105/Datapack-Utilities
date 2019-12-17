
scoreboard players set temp_9 du_data 0

execute if entity @s[tag=!du_hit_entity,nbt={SelectedItem:{tag:{du_dur:{enabled:1b}}}}] unless entity @s[nbt={SelectedItem:{tag:{du_dur:{item_dur:0}}}}] run function du:player/durability/process_mainhand
execute if entity @s[tag=du_hit_entity,nbt={SelectedItem:{tag:{du_dur:{enabled:1b}}}}] run function du:player/durability/damage_mainhand
execute if entity @s[nbt={Inventory:[ {Slot:-106b,tag:{du_dur:{enabled:1b}}} ]}] run function du:player/durability/process_offhand

execute if entity @s[nbt={Inventory:[ {Slot:100b,tag:{du_dur:{enabled:1b}}} ]}] run function du:player/durability/process_boots
execute if entity @s[nbt={Inventory:[ {Slot:101b,tag:{du_dur:{enabled:1b}}} ]}] run function du:player/durability/process_leggings
execute if entity @s[nbt={Inventory:[ {Slot:102b,tag:{du_dur:{enabled:1b}}} ]}] run function du:player/durability/process_chestplate
execute if entity @s[nbt={Inventory:[ {Slot:103b,tag:{du_dur:{enabled:1b}}} ]}] run function du:player/durability/process_helmet

execute if score temp_9 du_data matches 1 run function du:player/inv/restore_equipment
