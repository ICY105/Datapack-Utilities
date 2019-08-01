execute store result score temp_0 du_data run data get entity @s Inventory[{Slot:100b}].tag.Damage
execute store result score temp_1 du_data run data get entity @s Inventory[{Slot:100b}].tag.du_dur.damage
execute if score temp_0 du_data > temp_1 du_data run function du:player/durability/damage_boots
execute if score temp_0 du_data < temp_1 du_data run function du:player/durability/damage_boots
